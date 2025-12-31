import { defineCollection, z } from 'astro:content';

const artists = defineCollection({
  type: 'content',
  schema: z.object({
    name: z.string(),
    category: z.string(),
    city: z.string().optional(),
    techniques: z.array(z.string()).optional(),
    image: z.string(),
    email: z.string().email().optional(),
    instagram: z.string().optional(),
    website: z.string().url().optional(),
  }),
});

const posts = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    date: z.date(),
    author: z.string().optional(),
    description: z.string().optional(),
  }),
});

export const collections = { artists, posts };
