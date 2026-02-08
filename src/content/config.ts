import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    description: z.string(),
    date: z.coerce.date(),
    tags: z.array(z.string()),
    category: z.string(),
    author: z.string().default('Roshit'),
    image: z.string().optional(),
    readTime: z.string().optional(),
  }),
});

export const collections = { blog };
