import fs from "fs";
import path from "path";
import matter from "gray-matter";

export interface GuideFrontmatter {
  title: string;
  description: string;
  category: "City Guide" | "League Guide" | "Event Guide";
  heroImage?: string;
  publishedAt: string;
  updatedAt: string;
  author: string;
}

export interface GuideEntry {
  slug: string;
  frontmatter: GuideFrontmatter;
}

export interface Guide extends GuideEntry {
  content: string;
}

const GUIDES_DIR = path.join(process.cwd(), "content/guides");

export function getAllGuides(): GuideEntry[] {
  if (!fs.existsSync(GUIDES_DIR)) return [];

  const files = fs.readdirSync(GUIDES_DIR).filter((f) => f.endsWith(".mdx"));

  return files
    .map((filename) => {
      const raw = fs.readFileSync(path.join(GUIDES_DIR, filename), "utf-8");
      const { data } = matter(raw);
      return {
        slug: filename.replace(/\.mdx$/, ""),
        frontmatter: data as GuideFrontmatter,
      };
    })
    .sort(
      (a, b) =>
        new Date(b.frontmatter.publishedAt).getTime() -
        new Date(a.frontmatter.publishedAt).getTime()
    );
}

export function getGuideBySlug(slug: string): Guide | null {
  const filePath = path.join(GUIDES_DIR, `${slug}.mdx`);
  if (!fs.existsSync(filePath)) return null;

  const raw = fs.readFileSync(filePath, "utf-8");
  const { data, content } = matter(raw);

  return {
    slug,
    frontmatter: data as GuideFrontmatter,
    content,
  };
}

export function getGuideSlugs(): string[] {
  if (!fs.existsSync(GUIDES_DIR)) return [];
  return fs
    .readdirSync(GUIDES_DIR)
    .filter((f) => f.endsWith(".mdx"))
    .map((f) => f.replace(/\.mdx$/, ""));
}
