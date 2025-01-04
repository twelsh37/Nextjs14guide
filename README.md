<h1 align="center" style="font-size: 3em;"><strong>Not The Finished Article</strong></h1

# Comprehensive Next.js 14 Development Guide

The guide provides a comprehensive framework for building modern, production-ready web applications using Next.js 14 and its ecosystem.

It outlines a carefully selected technology stack that includes TypeScript for type safety  
Shadcn for UI components,  
Clerk for authentication,  
and Drizzle ORM for database management.

The guide emphasizes a server-first approach while maintaining optimal client-side performance.

Tom Welsh

Comprehensive Next.js 14 Development Guide

# Contents

[1.0 Introduction [4](#introduction)](#introduction)

[2.0 Getting Started [4](#getting-started)](#getting-started)

[2.1 Tech Stack [4](#tech-stack)](#tech-stack)

[2.2 Initial Setup [5](#initial-setup-1)](#initial-setup-1)

[2.3 .env.local file [10](#env.local-file)](#env.local-file)

[2.4 Vercel Project Settings [14](#vercel-project-settings)](#vercel-project-settings)

[3.0 Project Structure [15](#section)](#section)

[3.1 Understanding the Root Structure [15](#understanding-the-root-structure)](#understanding-the-root-structure)

[3.1.1 app/ [15](#app)](#app)

[3.1.2 components/ [16](#components)](#components)

[3.1.3 lib/ [16](#lib)](#lib)

[3.1.4 Support Directories [16](#support-directories)](#support-directories)

[4.0 Code Style and Structure [18](#code-style-and-structure)](#code-style-and-structure)

[4.1 File Organization [18](#file-organization)](#file-organization)

[4.1.1 Imports [19](#imports)](#imports)

[4.1.2 Types/Interfaces [19](#typesinterfaces)](#typesinterfaces)

[4.1.3 Constants [20](#constants)](#constants)

[4.1.4 Helper Functions [20](#helper-functions)](#helper-functions)

[4.1.5 Components [21](#components-1)](#components-1)

[5.0 Implementation Guidelines [21](#implementation-guidelines)](#implementation-guidelines)

[Import Organization [21](#import-organization)](#import-organization)

[Type Definition Guidelines [21](#type-definition-guidelines)](#type-definition-guidelines)

[Constants Management [21](#constants-management)](#constants-management)

[Helper Function Rules [21](#helper-function-rules)](#helper-function-rules)

[Component Structure [22](#component-structure)](#component-structure)

[Benefits of This Structure [22](#benefits-of-this-structure)](#benefits-of-this-structure)

[1. Cognitive Load [22](#cognitive-load)](#cognitive-load)

[2. Maintenance [22](#maintenance)](#maintenance)

[3. Collaboration [22](#collaboration)](#collaboration)

[4. Development Experience [22](#development-experience)](#development-experience)

[Common Pitfalls to Avoid [22](#common-pitfalls-to-avoid)](#common-pitfalls-to-avoid)

[Best Practices [23](#best-practices)](#best-practices)

[Naming Conventions [23](#naming-conventions)](#naming-conventions)

[Files and Directories [23](#files-and-directories)](#files-and-directories)

[Components and Functions [24](#components-and-functions)](#components-and-functions)

[TypeScript Usage Best Practices [24](#typescript-usage-best-practices)](#typescript-usage-best-practices)

[Enable Strict Mode [24](#enable-strict-mode)](#enable-strict-mode)

[Use Interfaces for Objects [24](#use-interfaces-for-objects)](#use-interfaces-for-objects)

[Const Assertions for Static Objects [25](#const-assertions-for-static-objects)](#const-assertions-for-static-objects)

[Error Handling Types [25](#error-handling-types)](#error-handling-types)

[UI and Styling [27](#ui-and-styling)](#ui-and-styling)

[Shadcn Setup [27](#shadcn-setup)](#shadcn-setup)

[Initialise Shadcn [27](#initialise-shadcn)](#initialise-shadcn)

[Add components [27](#add-components)](#add-components)

[Real-World Advantages: [29](#real-world-advantages)](#real-world-advantages)

[Tailwind Best Practices [29](#tailwind-best-practices)](#tailwind-best-practices)

[Organize Classes Logically [29](#organize-classes-logically)](#organize-classes-logically)

[Use Custom Classes for Repeated Patterns [30](#use-custom-classes-for-repeated-patterns)](#use-custom-classes-for-repeated-patterns)

[Component Structure [31](#component-structure-1)](#component-structure-1)

[State Management [33](#state-management)](#state-management)

[What is State Management? [33](#what-is-state-management)](#what-is-state-management)

[Server Components (Light Blue Section) [34](#server-components-light-blue-section)](#server-components-light-blue-section)

[Client Components (Light Pink Section) [35](#client-components-light-pink-section)](#client-components-light-pink-section)

[The Connection [35](#the-connection)](#the-connection)

[Server State vs. Client State [35](#server-state-vs.-client-state)](#server-state-vs.-client-state)

[Server State [35](#server-state)](#server-state)

[Client State [36](#client-state)](#client-state)

[Why Is State Management Important? [37](#why-is-state-management-important)](#why-is-state-management-important)

[Best Practices in Next.js 14 [37](#best-practices-in-next.js-14)](#best-practices-in-next.js-14)

[Use Server Components by Default [37](#use-server-components-by-default)](#use-server-components-by-default)

[Use Client Components for Interactivity [38](#use-client-components-for-interactivity)](#use-client-components-for-interactivity)

[Keep State as Low as Possible [38](#keep-state-as-low-as-possible)](#keep-state-as-low-as-possible)

[Navigation [39](#navigation)](#navigation)

[App Router Setup [39](#app-router-setup)](#app-router-setup)

[Protected Routes [39](#protected-routes)](#protected-routes)

[Navigation Component [39](#navigation-component)](#navigation-component)

[The Root Layout (app/layout.tsx): [40](#the-root-layout-applayout.tsx)](#the-root-layout-applayout.tsx)

[The Navigation Component: [40](#the-navigation-component)](#the-navigation-component)

[Protected Routes (in middleware.ts): [40](#protected-routes-in-middleware.ts)](#protected-routes-in-middleware.ts)

[Error Handling [41](#error-handling)](#error-handling)

[The Global Error Handler [41](#the-global-error-handler)](#the-global-error-handler)

[The API Error Handler [42](#the-api-error-handler)](#the-api-error-handler)

[Performance Optimization [43](#performance-optimization)](#performance-optimization)

[Core web Vitals [43](#core-web-vitals)](#core-web-vitals)

[Image Optimization [43](#image-optimization)](#image-optimization)

[Preventing Layout Shifts [43](#preventing-layout-shifts)](#preventing-layout-shifts)

[Testing [45](#testing)](#testing)

[Security with Clerk Authentication [46](#security-with-clerk-authentication)](#security-with-clerk-authentication)

[Authentication Setup (ClerkProvider) [46](#authentication-setup-clerkprovider)](#authentication-setup-clerkprovider)

[Protected API Routes [47](#protected-api-routes)](#protected-api-routes)

[Security Headers (Middleware) [47](#security-headers-middleware)](#security-headers-middleware)

[Internationalization (i18n) [48](#internationalization-i18n)](#internationalization-i18n)

[The Setup Code (app/\[lang\]/layout.tsx) [49](#the-setup-code-applanglayout.tsx)](#the-setup-code-applanglayout.tsx)

[The Translation System (lib/i18n/index.ts) [49](#the-translation-system-libi18nindex.ts)](#the-translation-system-libi18nindex.ts)

[Why Do This From the Start? [50](#why-do-this-from-the-start)](#why-do-this-from-the-start)

[Mobile and Safe Areas [50](#mobile-and-safe-areas)](#mobile-and-safe-areas)

[Safe Container Component [50](#safe-container-component)](#safe-container-component)

[Bottom Navigation [51](#bottom-navigation)](#bottom-navigation)

[Database Management using Drizzle ORM [51](#database-management-using-drizzle-orm)](#database-management-using-drizzle-orm)

[Database Operations [53](#database-operations)](#database-operations)

[Deployment (Vercel) [53](#deployment-vercel)](#deployment-vercel)

[What is Vercel CLI? [53](#what-is-vercel-cli)](#what-is-vercel-cli)

[Automated Deployment with vercel.json [54](#automated-deployment-with-vercel.json)](#automated-deployment-with-vercel.json)

[Build Optimizations [54](#build-optimizations)](#build-optimizations)

[Build Optimization [55](#build-optimization)](#build-optimization)

[Image Optimization [55](#image-optimization-2)](#image-optimization-2)

[Experimental Features [56](#experimental-features)](#experimental-features)

[Development Workflow [56](#development-workflow)](#development-workflow)

[Best Practices Checklist [57](#best-practices-checklist)](#best-practices-checklist)

[Development [57](#development)](#development)

[Security [57](#security)](#security)

[Performance [57](#performance)](#performance)

[Testing [57](#testing-1)](#testing-1)

# 1.0 Introduction

Welcome to our comprehensive guide for building Next.js 14 applications! This guide will walk you through setting up and building production-ready applications using Next.js, TypeScript, and our recommended tech stack. We’ll cover everything from initial setup to advanced patterns and best practices.

# 2.0 Getting Started

## 2.1 Tech Stack

Let me explain each part of our tech stack and why we've chosen it:

##### Next.js 14 (App Router)

\- The latest version of Next.js with its new App Router architecture. We're using this because it provides powerful server-side rendering capabilities, improved routing, and better performance through React Server Components. The App Router specifically gives us a more intuitive way to structure our application and handle routing.

##### TypeScript

\- A strongly-typed superset of JavaScript that helps catch errors before they reach production. We're using TypeScript because it provides better code reliability, excellent developer tooling support, and makes our codebase more maintainable and self-documenting through type definitions.

##### Yarn (Package Management)

\- A fast, reliable, and secure package manager for JavaScript. We chose Yarn over npm because it offers better performance, more consistent package versioning, and improved security through strict lockfile verification. It also has excellent monorepo support if we need to scale the project.

##### Shadcn (UI Components)

\- A collection of reusable, customizable UI components built on top of Radix UI. Unlike traditional component libraries, Shadcn lets us copy the components directly into our project, giving us full control over the code while maintaining high accessibility standards and consistent design patterns.

##### Clerk (Authentication)

\- A complete authentication and user management solution. We selected Clerk because it provides a robust, secure authentication system with features like multi-factor authentication, social logins, and user management out of the box, while being easier to implement than building these features from scratch.

##### Drizzle ORM with PostgreSQL

\- A lightweight, type-safe ORM paired with PostgreSQL database. We're using this combination because Drizzle offers excellent TypeScript integration and better performance compared to heavier ORMs, while PostgreSQL provides a reliable, feature-rich database system with strong data integrity guarantees.

##### Vercel (Hosting)

\- A cloud platform optimized for Next.js deployments. We've chosen Vercel because it provides seamless deployment integration with Next.js, excellent performance through its global edge network, and built-in features like analytics and monitoring, making it ideal for modern web applications.

## 2.2 Initial Setup

When we first set up a nextjs project, we use create-next-app to assist with a structured setup.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Create new project
npx create-next-app@latest project-name --typescript --eslint --tailwind --app --use-yarn --no-src</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This command is doing quite a bit, so let’s break down each flag:

- `npx create-next-app@latest`**:** We’re using `npx` to run the latest version of the Next.js project creator
- `--typescript`: We’ve chosen TypeScript over JavaScript because it provides type safety, better tooling support, and helps catch errors early in development
- `--eslint`: Automatically sets up ESLint for code quality and consistency
- `--tailwind`: Integrates Tailwind CSS, which we’ve chosen for its utility-first approach and excellent developer experience
- `--app`: Uses the new Next.js App Router instead of the Pages Router. This is a strategic choice as App Router is the future of Next.js and provides better support for React Server Components
- `--use-yarn`: We prefer Yarn over npm for its consistent versioning and faster package installation
- `--no-src`: This is a deliberate choice to keep our project root cleaner. Instead of putting everything in a `src` directory, we maintain a flat structure at the root level which many developers find more navigable

With our initial project setup, it is time to jump into the project directory and continue.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Navigate to project
cd project-name</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

We will now install our core dependencies.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Install core dependencies
yarn add @clerk/nextjs shadcn drizzle-orm @vercel/postgres lucide-react zod \
  next-safe-action class-validator @sentry/nextjs pino pino-pretty winston \
  @vercel/analytics @vercel/speed-insights</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

We’ve carefully chosen each of these packages:

- `@clerk/nextjs`: Provides authentication and user management. We chose Clerk over alternatives like NextAuth because it’s more feature-complete and provides a better developer experience
- `shadcn`: A component library that gives us high-quality, customizable UI components without the overhead of a full UI framework
- `drizzle-orm` _+_ `@vercel/postgres`: Our database stack. Drizzle ORM is lightweight and type-safe, and pairs well with Vercel’s Postgres offering
- `lucide-react`: A clean, consistent icon set that integrates well with our tech stack
- `zod`: For runtime type validation - crucial for handling user input and API responses safely
- `next-safe-action`: Provides type-safe server actions, reducing the chance of runtime errors
- `@sentry/nextjs`: For error tracking and monitoring in production
- `pino`_,_ `pino-pretty`_,_ `winston`: A robust logging setup. Pino for performance, winston for flexibility
- `@vercel/analytics`_,_ `@vercel/speed-insights`: Built-in analytics and performance monitoring from Vercel

We will now install our dev dependencies:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<pre><code># Install dev dependencies
yarn add -D @types/node typescript @types/react @types/react-dom eslint drizzle-kit pg @testing-library/react @testing-library/dom-jest</code></pre>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

These are our development tools:

- _TypeScript type definitions (_`@types/*`_)_: Essential for TypeScript development
- `drizzle-kit`: CLI tools for database migrations and management
- `pg`: PostgreSQL client for local development
- _Testing setup_: We’ve chosen Jest and React Testing Library for their excellent React support and wide community adoption

Each choice here is deliberate and forms part of a cohesive development stack. We’re prioritising:

- Type safety (TypeScript, Zod)
- Developer experience (Tailwind, Shadcn)
- Production readiness (Sentry, logging)
- Performance monitoring (Vercel tools)
- Testing capabilities (Jest, Testing Library)

This setup provides a solid foundation for building production-grade Next.js applications while maintaining excellent developer experience and code quality.

##### Secure Environment Variable Setup

The first thing to understand is why we use environment variables: they’re a secure way to handle sensitive information like API keys, database credentials, and other secrets that your application needs but shouldn’t be committed to your code repository.

Before we get into Environment Variables we need to talk about .gitignore and Project Security.

##### Understanding .gitignore and Project Security

Think of ` .``gitignore ` as your project’s security guard - it tells Git which files and directories should never be tracked or uploaded to your repository. This is absolutely critical for several reasons, but especially for keeping your secrets secret!

Here’s what a robust ` .``ignore ` for a Next.js project should look like:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Dependencies
node_modules
/.pnp
.pnp.js
&#10;# Testing
/coverage
&#10;# Next.js build outputs
/.next/
/out/
/build
&#10;# Environment Variables and Secrets
.env
.env.local
.env*.local
&#10;# Debug logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*
&#10;# IDE and Editor files
.idea/
.vscode/
*.swp
*.swo
&#10;# OS files
.DS_Store
Thumbs.db
&#10;# Vercel
.vercel</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Let me break this down and why it is important:

##### Environment Files

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>.env 
.env.local 
.env*.local</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- These files contain your secrets - API keys, database passwords, etc.
- Even if you’re using Vercel to manage your production secrets, you NEVER want these in your git repository
- If these files get committed, your secrets are in the git history forever (yes, even if you delete them later!)
- Think of it this way: would you want your house keys photocopied in a public library?

##### Dependencies and Build Outputs

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>node_modules
/.next/
/out/</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- These directories are generated from your source code
- They’re huge and unnecessary to track
- Different environments might need different versions
- It’s like carrying around the factory with your car - you just need the car!

##### Development Files

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>.vscode/ 
.idea/ 
*.swp</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- These are personal to each developer
- They don’t affect how the code runs
- Different developers might use different tools

Here’s a real-world scenario of why this matters:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Bad - Don&#39;t do this!
git add .env.local git commit -m &quot;Updated database connection&quot;
git push 
&#10;# Your database credentials are now in your git history 😱</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Instead, here’s the proper workflow:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><code># Create a template for others to follow</code><br />
<code> cp .env.local .env.example</code><br />
<br />
<code># 2. Remove any secret values in .env.example</code><br />
<br />
<code># 3. Add .env.example to git git add .env.example</code><br />
<code> git commit -m "Added environment variable template"</code><br />
<code> </code><br />
<code># Your team can now copy the file and fill in their own values</code><br />
<code>cp .env.example .env.local</code></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Even though we’re using Vercel for production secrets, we still need `.gitignore` because:

- Local development still needs environment variables
- Some secrets might be different in development
- Multiple developers might use different test credentials
- You might switch hosting providers in the future
- Your repository history is forever - a leaked secret in an old commit is still a security risk

**Pro Tips:**

- Always check `git status` before committing
- If you accidentally commit a secret:
  - Immediately invalidate those credentials
  - Generate new ones
  - Update your `.gitignore`
  - Consider using git-filter-repo to clean history (but remember, assume the secret is compromised)
- Use tools like `husky` to prevent accidental commits of sensitive files
- Regularly audit your `.gitignore` file
- When in doubt, add it to `.gitignore`

Remember: Security isn’t just about protecting against malicious actors - it’s often about preventing honest mistakes. A good `.gitignore` is your first line of defence! Now that we have discussed at length why we need to protect our .env or .env.local files lets dig into them.

## 2.3 .env.local file

Create a `.env.local` file with your favourite text editor. Here’s a comprehensive example of what your `.env.local` should look like:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Authentication (Clerk)
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_****
CLERK_SECRET_KEY=sk_****
&#10;# Database (Vercel Postgres)
POSTGRES_URL=&quot;postgres://...&quot;
POSTGRES_PRISMA_URL=&quot;postgres://...&quot;
POSTGRES_URL_NON_POOLING=&quot;postgres://...&quot;
POSTGRES_USER=&quot;default&quot;
POSTGRES_HOST=&quot;...&quot;
POSTGRES_PASSWORD=&quot;...&quot;
POSTGRES_DATABASE=&quot;verceldb&quot;
&#10;# Error Tracking (Sentry)
NEXT_PUBLIC_SENTRY_DSN=&quot;https://...&quot;
SENTRY_AUTH_TOKEN=&quot;sntrys_...&quot;
SENTRY_ORG=&quot;your-org&quot;
SENTRY_PROJECT=&quot;your-project&quot;
&#10;# Application
NEXT_PUBLIC_APP_URL=&quot;http://localhost:3000&quot;
NODE_ENV=&quot;development&quot;
&#10;# API Keys (Examples)
OPENAI_API_KEY=&quot;sk-...&quot;
STRIPE_SECRET_KEY=&quot;sk_...&quot;
STRIPE_WEBHOOK_SECRET=&quot;whsec_...&quot;</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Let’s break down why we handle environment variables this way:

##### Local Development:

- `.env.local` is specifically for local development
- It’s automatically ignored by Git (included in `.gitignore`)
- Next.js loads it automatically
- Values override any values set in `.env`, `.env.development`, or `.env.production`

##### The `NEXT_PUBLIC_` Prefix:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_****
CLERK_SECRET_KEY=sk_****</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- Variables prefixed with `NEXT_PUBLIC_` are exposed to the browser
- All other variables are only available on the server
- This is a crucial security feature - you never want secret keys exposed to the client

Type Safety for Environment Variables:  
Create a types file for your environment variables:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// types/env.d.ts
declare namespace NodeJS {
  interface ProcessEnv {
    NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY: string
    CLERK_SECRET_KEY: string
    POSTGRES_URL: string
    // ... other variables
  }
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

##### Environment Variable Validation:

Here is a very detailed break down on this important subject.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// lib/env/validate.ts
&#10;// Import Zod, a TypeScript-first schema validation library
// We use Zod because it provides both runtime validation and type inference
import { z } from &#39;zod&#39;
&#10;// Define a schema that describes the shape and requirements of our environment variables
// This schema acts as both a runtime validator and a type definition
const envSchema = z.object({
  // Validate CLERK_PUBLISHABLE_KEY:
  // - Must be a string
  // - Must have at least 1 character (can&#39;t be empty)
  // - This is public because it starts with NEXT_PUBLIC_
  NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY: z.string().min(1),
&#10;  // Validate CLERK_SECRET_KEY:
  // - Must be a string
  // - Must have at least 1 character
  // - This is private (server-side only) as it doesn&#39;t start with NEXT_PUBLIC_
  CLERK_SECRET_KEY: z.string().min(1),
&#10;  // Validate POSTGRES_URL:
  // - Must be a string
  // - Must be a valid URL format
  // - The url() method checks for valid URL structure
  POSTGRES_URL: z.string().url(),
&#10;  // You can add more environment variables here with their validation rules
  // Examples of other common validations:
  // PORT: z.number().int().positive(),
  // API_KEY: z.string().length(32),
  // DEBUG: z.boolean(),
  // NODE_ENV: z.enum([&#39;development&#39;, &#39;production&#39;, &#39;test&#39;]),
})
&#10;// Export a function that validates all environment variables
export function validateEnv() {
  try {
    // process.env contains all environment variables
    // parse() will throw an error if validation fails
    envSchema.parse(process.env)
  } catch (error) {
    // If validation fails, throw a more readable error
    // This helps developers quickly identify which env var is misconfigured
    throw new Error(`Invalid environment variables: ${error.message}`)
  }
}
&#10;// The schema also creates a TypeScript type that can be exported
// This gives you autocomplete and type checking when using env vars
type Env = z.infer&lt;typeof envSchema&gt;</code></pre>
<p>Here’s how you would typically use this validation in your application:</p>
<pre><code>// app/layout.tsx or a similar root file
import { validateEnv } from &#39;@/lib/env/validate&#39;
&#10;// Validate environment variables at startup
if (process.env.NODE_ENV !== &#39;test&#39;) {
  validateEnv()
}
&#10;// If validation passes, your app starts normally
// If validation fails, you get a helpful error message like:
// Error: Invalid environment variables: POSTGRES_URL must be a valid URL</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Key Benefits of This Approach:

- **Early Error Detection**: Fails fast if any required environment variables are missing or invalid
- **Type Safety**: TypeScript knows the shape of your environment variables
- **Documentation**: The schema serves as documentation for required environment variables
- **Runtime Validation**: Catches issues that TypeScript can’t catch at compile time

Here are some common patterns you might add to your project:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>const envSchema = z.object({
  // Required number within a range
  PORT: z.number().int().min(1000).max(65535),
&#10;  // Optional variable with default
  NODE_ENV: z.enum([&#39;development&#39;, &#39;production&#39;, &#39;test&#39;])
    .default(&#39;development&#39;),
&#10;  // URL with protocol validation
  API_URL: z.string().url().startsWith(&#39;https://&#39;),
&#10;  // Complex string pattern
  API_KEY: z.string().regex(/^[A-Za-z0-9]{32}$/),
&#10;  // Boolean from string
  DEBUG: z.preprocess(
    (str) =&gt; str === &#39;true&#39;,
    z.boolean()
  ),
})</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This validation runs at startup, which means:

- Development: You catch missing/invalid variables before starting your dev server
- Production: Your deployment fails fast if environment isn’t configured correctly
- CI/CD: Your tests fail if environment variables aren’t set up properly

Now that we have discussed .env.local and its associated benefits we should now consider Vercel’s approach to handling .env and .env.local files.

## 2.4 Vercel Project Settings

- Vercel provides an Environment Variables section in your project settings of your Vercel dashboard
- You can set different values for Development, Preview, and Production environments
- These override any values in your `.env` files when deployed

When you have setup the Vercel CLI we can the move on to using it.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Install Vercel CLI globally
npm install -g vercel
&#10;# Log into your Vercel account
vercel login</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

##### Pulling Environment Variables

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code># Pull all environment variables from your Vercel project 
vercel env pull .env.local</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This command is like syncing your local development environment with production. It’s particularly useful when:

- You’re joining a new project team
- Someone has added new environment variables to the project
- You need to ensure your local setup matches production

This will pull down all the environment variables for the particular project you are working on.

##### Common Gotchas and Solutions:

**Variable Precedence**:

- Production overrides Preview overrides Development
- Be careful with overlapping variables

**Best Practices when using Vercel CLI:**

- Pull environment variables after every deployment
- Use different values for development/staging/production
- Document all environment variables in your project README
- Use the `--environment` flag explicitly for clarity
- Regular audits of environment variables
- Clean up unused variables promptly

Remember:

- The CLI is your friend for automation
- Always double-check environment targeting
- Keep your local environment in sync
- Use secret flags for sensitive data
- Document your environment setup

#

# 3.0 Project Structure

We follow a structured approach to organizing our Next.js applications:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>project-root/
├── app/              # Next.js App Router pages
│   ├── api/          # API routes
│   ├── (auth)/       # Auth-required routes
│   └── error.tsx     # Error handling
├── components/       # Reusable components
│   ├── ui/           # Shadcn components
│   └── [feature]/    # Feature-specific components
├── lib/              # Utility functions
│   ├── db/           # Database config
│   ├── utils/        # Helper functions
│   └── api/          # API utilities
├── types/            # TypeScript definitions
├── styles/           # Global styles
├── public/           # Static assets
└── config/           # Configuration files</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Let me explain our project structure and the thinking behind it. This structure has evolved from real-world experience building Next.js applications and represents a balance between organization, scalability, and developer experience.

## 3.1 Understanding the Root Structure

Let’s break down each major directory and why it’s organized this way:

### 3.1.1 app/

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>app/
├── api/          # API routes
├── (auth)/       # Auth-required routes
└── error.tsx     # Error handling</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This is the heart of your Next.js application. We’re using the App Router, which is Next.js 14’s recommended approach. The structure here is interesting:

- `api/` keeps all your API endpoints in one place
- `(auth)/` uses route groups (note the parentheses) to organize authentication-required pages. This is a Next.js 14 feature that lets us group routes without affecting the URL structure
- `error.tsx` at the root handles application-wide errors

### 3.1.2 components/

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>components/
├── ui/           # Shadcn components
└── [feature]/    # Feature-specific components</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This two-level split is deliberate:

- `ui/` houses our Shadcn components. These are your “building blocks” - buttons, forms, cards, etc.
- `[feature]/` folders contain components specific to features like `auth/`, `dashboard/`, etc.

This separation prevents your components folder from becoming a mess of files and makes it clear what each component is for.

### 3.1.3 lib/

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>lib/
├── db/           # Database config
├── utils/        # Helper functions
└── api/          # API utilities</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This is your utilities and configuration hub. We’ve split it into:

- `db/` for database-related code (Drizzle configurations, etc.)
- `utils/` for shared helper functions
- `api/` for API-related utilities like fetch wrappers
-

### 3.1.4 Support Directories

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>├── types/        # TypeScript definitions
├── styles/       # Global styles
├── public/       # Static assets
└── config/       # Configuration files</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

These directories serve specific purposes:

- `types/` centralizes your TypeScript types
- `styles/` for global CSS (though we primarily use Tailwind)
- `public/` for static files like images
- `config/` for configuration files

##### Why This Structure Works

- **Discoverability**: New team members can quickly find things. If you need a component, you know it’s in `components/`. If you need a utility function, it’s in `lib/`.

- **Scalability**: As your app grows, you can add new feature folders without restructuring everything.

- **Separation of Concerns**: Each directory has a clear purpose. There’s no ambiguity about where new code should go.

##### Compromises and Tradeoffs

We made some deliberate choices here:

- **Flat vs. Nested**: We chose a relatively flat structure. You could go deeper with nesting, but that can become complicated. This is a balance between organization and simplicity.

- **Feature Co-location**: Some argue for keeping all feature-related files together (components, utilities, types). We chose to separate by type instead because:

  - It’s easier to share code between features
  - It’s clearer where to find things
  - It prevents duplication

- **lib vs. utils**: We use `lib` instead of `utils` at the root level because `lib` implies more structured, substantial code, while `utils` (inside `lib`) is for smaller helper functions.

##### Key Conventions

- Group related files in feature directories
- Use clear, descriptive names
- Keep files focused and single-purpose
- Implement proper separation of concerns
- Follow consistent naming patterns

##### The Key Conventions Explained

Let’s break down why each convention matters:

- **Group related files in feature directories**

  - Keeps related code together
  - Makes it easier to work on features in isolation
  - Helps with code splitting

- **Use clear, descriptive names**

  - `auth` instead of `authentication`
  - `user-profile` instead of `up`
  - No abbreviations unless universally understood

- **Keep files focused and single-purpose**

  - Each component does one thing well
  - Makes testing easier
  - Improves reusability

- **Implement proper separation of concerns**

  - UI logic stays in components
  - Business logic goes in utilities
  - API logic stays in API routes

- **Follow consistent naming patterns**

  - kebab-case for files and directories
  - PascalCase for components
  - camelCase for functions

This structure isn’t perfect for every project, but it’s a solid foundation that scales well. You might need to adjust it based on your specific needs, but the principles behind it remain valuable:

- Clear organization
- Easy to navigate
- Scales with your application
- Supports team collaboration
- Maintains code quality

# 4.0 Code Style and Structure

## 4.1 File Organization

Every file should follow this structure:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// 1. Imports
import { useState } from &#39;react&#39;
import { cn } from &#39;@/lib/utils&#39;
&#10;// 2. Types/Interfaces
interface ComponentProps {
  // Props definition
}
&#10;// 3. Constants
const DEFAULT_VALUES = {
  // Configuration
}
&#10;// 4. Helper Functions
function formatData() {
  // Utility logic
}
&#10;// 5. Component
export function Component({ prop1, prop2 }: ComponentProps) {
  // Component logic
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This organization pattern provides a clear, consistent structure that helps developers quickly understand and navigate files. The key benefits are:

- **Logical Flow**: The structure follows a natural progression from dependencies to implementation.
- **Type Safety**: By defining types early, we ensure type safety throughout the file.
- **Maintainability**: Clear separation of concerns makes the code easier to maintain and update.
- **Developer Experience**: Consistent structure means developers always know where to find things.

The standardized file structure we’ve adopted follows a logical flow that enhances code readability, maintainability, and developer experience. Let’s break down each section and understand why it’s structured this way.

### 4.1.1 Imports

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>import { useState } from &#39;react&#39;
import { cn } from &#39;@/lib/utils&#39;</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

##### Key Decisions:

- Imports are placed at the top to immediately show dependencies
- Grouped by type (React, internal utilities, third-party)
- Absolute imports using `@/` prefix for internal modules

##### Benefits:

- Clear dependency visualization
- Easier dependency management
- Simpler module resolution
- Quick identification of potential circular dependencies

### 4.1.2 Types/Interfaces

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>interface ComponentProps {
  // Props definition
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

##### Key Decisions:

- Types immediately follow imports
- Defines shape of data before usage
- Interfaces preferred for object types
- Props interfaces named with suffix ‘Props’

##### Benefits:

- Type definitions available before implementation
- Improved code documentation
- Better TypeScript inference
- Enhanced IDE support

### 4.1.3 Constants

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>const DEFAULT_VALUES = {
  // Configuration
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

##### Key Decisions:

- Constants defined before implementation
- Use uppercase for true constants
- Group related constants together
- Prefer const assertions with ‘as const’

##### Benefits:

- Centralized configuration
- Easy to find and modify values
- Prevents magic numbers/strings
- Better type inference for literals

### 4.1.4 Helper Functions

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>function formatData() {
  // Utility logic
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

##### Key Decisions:

- Helper functions before main component
- Pure functions preferred
- Limited scope to file usage
- Clear, descriptive naming

##### Benefits:

- Logic separation from component
- Easier unit testing
- Improved code reuse
- Better function isolation

### 4.1.5 Components

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export function Component({ prop1, prop2 }: ComponentProps) {
  // Component logic
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

##### Key Decisions:

- Main component at the bottom
- Function declaration style
- Props destructured in parameters
- Explicit type annotations

##### Benefits:

- Natural code flow (dependencies → implementation)
- Consistent component structure
- Clear props usage
- Type-safe implementation

# 5.0 Implementation Guidelines

### Import Organization

- External dependencies first
- React/Next.js imports
- Internal utilities
- Types/interfaces
- Styles (if any)

### Type Definition Guidelines

- Export shared types
- Keep component-specific types local
- Use descriptive names
- Include JSDoc comments for complex types

### Constants Management

- Group by purpose
- Use semantic naming
- Include units in names if applicable
- Document magic values

### Helper Function Rules

- Pure functions when possible
- Single responsibility
- Clear return types
- Proper error handling

### Component Structure

- Props destructuring at top
- Hooks after props
- Event handlers next
- Return statement last

## Benefits of This Structure

### 1. Cognitive Load

- Natural progression of code
- Predictable file structure
- Easy to scan and understand
- Clear separation of concerns

### 2. Maintenance

- Easy to locate code sections
- Simplified refactoring
- Clear dependency chain
- Isolated changes

### 3. Collaboration

- Consistent team approach
- Easy code reviews
- Clear code ownership
- Reduced merge conflicts

### 4. Development Experience

- Better IDE support
- Faster navigation
- Improved autocomplete
- Easier debugging

## Common Pitfalls to Avoid

- Mixing Concerns

  - Don’t mix types with implementation
  - Keep helper functions focused
  - Avoid inline type definitions

- Order Violations

  - Don’t define types after usage
  - Keep imports at the top
  - Maintain logical grouping

- Scope Issues

  - Don’t expose internal helpers
  - Keep file-specific code private
  - Use proper export patterns

- Organization Problems

  - Don’t skip sections
  - Maintain consistent structure
  - Follow naming conventions

## Best Practices

- File Length

  - Keep files under 200 lines
  - Split large components
  - Extract complex logic

- Naming

  - Use descriptive names
  - Follow team conventions
  - Be consistent

- Documentation

  - Add JSDoc comments
  - Document complex logic
  - Explain non-obvious code

- Code Quality

  - Write pure functions
  - Maintain single responsibility
  - Use proper typing

### Naming Conventions

### Files and Directories

Use kebab-case for files and directories

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><ul>
<li><pre><code>components/auth-wizard/
features/user-profile/
user-settings.tsx
api-utils.ts</code></pre></li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### Components and Functions

- PascalCase for components
- camelCase for functions and variables
- Prefix handlers with “handle”
- Use auxiliary verbs for booleans

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<pre><code>// Components
export function UserProfile() {}
export function AuthenticationModal() {}
&#10;// Functions
function handleSubmit() {}
function validateInput() {}
&#10;// Variables
const isLoading = true
const hasError = false
const shouldRefresh = true</code></pre>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

## TypeScript Usage Best Practices

### Enable Strict Mode

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<pre><code>{
  &quot;compilerOptions&quot;: {
    &quot;strict&quot;: true,
    &quot;noUncheckedIndexedAccess&quot;: true,
    &quot;noImplicitReturns&quot;: true
  }
}</code></pre>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This configuration makes TypeScript work harder to protect you from common mistakes. Here’s why each flag matters:

- `strict: true` enables comprehensive type checking that catches many common errors
- `noUncheckedIndexedAccess` ensures you handle potential undefined values when accessing arrays or objects by index
- `noImplicitReturns` makes sure all code paths in a function return a value, preventing accidental undefined returns

### Use Interfaces for Objects

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<pre><code>// Good
interface UserProps {
  id: string;
  name: string;
  email: string;
}
&#10;// Instead of
type UserProps = {
  id: string;
  name: string;
  email: string;
}</code></pre>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

We prefer interfaces over types for objects because:

- Interfaces provide clearer error messages when something goes wrong
- They support “declaration merging” which lets you add properties later if needed
- They’re more familiar to developers coming from other object-oriented languages
- They’re specifically designed for describing object shapes

### Const Assertions for Static Objects

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>const STATUS = {
  IDLE: &#39;idle&#39;,
  LOADING: &#39;loading&#39;,
  SUCCESS: &#39;success&#39;,
  ERROR: &#39;error&#39;,
} as const;</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

The `as const` assertion is powerful because:

- It makes all properties deeply readonly, preventing accidental modifications
- It converts the string values from general `string` type to specific literal types (e.g., ‘idle’ instead of string)
- It allows TypeScript to infer the most specific possible type, which is especially useful for discriminated unions
- It’s more type-safe than using enums (which have some quirks in TypeScript)

These three practices together help create more reliable and maintainable TypeScript code while catching potential issues at compile time rather than runtime.

### Error Handling Types

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>class AppError extends Error {
  constructor(
    message: string,
    public code: string,
    public statusCode: number = 500,
    public isOperational = true
  ) {
    super(message)
    this.name = &#39;AppError&#39;
  }
}
&#10;// Usage
throw new AppError(&#39;Invalid input&#39;, &#39;VALIDATION_ERROR&#39;, 400)</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Let me explain the purpose of this Error Handling type and why we use it this way:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>class AppError extends Error {
  constructor(
    message: string,
    public code: string,
    public statusCode: number = 500,
    public isOperational = true
  ) {
    super(message)
    this.name = &#39;AppError&#39;
  }
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This custom error class is designed to provide rich, structured error information. Here’s why each part matters:

- We extend the built-in `Error` class to maintain compatibility with JavaScript’s error handling
- `message` is inherited from the base `Error` class and provides a human-readable description
- `code` is a string identifier that makes errors programmatically identifiable (like ‘VALIDATION_ERROR’)
- `statusCode` defaults to 500 (server error) but can be set to any HTTP status code
- `isOperational` helps distinguish between operational errors (like validation) and programming errors

When using it:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>throw new AppError(&#39;Invalid input&#39;, &#39;VALIDATION_ERROR&#39;, 400)</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This gives us several benefits:

- We can handle errors consistently across our application
- We can easily map errors to HTTP responses
- We can provide clear error messages to users
- We can log errors with structured data for debugging

This error handling pattern is particularly useful in Next.js applications because it bridges the gap between client-side and server-side errors while maintaining type safety.

## UI and Styling

### Shadcn Setup

Shadcn is really easy to setup and install components The setup commands are just the beginning - they set up the base configuration and add a few essential components. From there, you can add more components as needed, keeping your bundle size minimal by only including what you use.

### Initialise Shadcn

| ` npx`` shadcn@latest init ` |
| ---------------------------- |

### Add components\* \*

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>npx shadcn@latest add button
npx shadcn@latest add card
npx shadcn@latest add input</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Shadcn is not actually a component library or framework in the traditional sense - it’s a unique approach to building component systems. Here’s what makes it special:

##### What Shadcn Is:

- A collection of reusable components built on top of Radix UI primitives
- The components are accessible, customizable, and open source
- Instead of installing it as a dependency, you copy the components directly into your project
- Built with Tailwind CSS for styling

##### Why Choose Shadcn Over Alternatives:

- Full Component Control: Unlike Material UI or Chakra UI where you’re locked into their styling and update cycle, with Shadcn you own the component code. You can modify, customize, or debug components directly since they live in your codebase.

- Zero Runtime Overhead: Since components are part of your project rather than an external dependency, there’s no extra bundle size from importing a full component library.

- Modern Stack Alignment: It’s built specifically for use with:

  - React Server Components
  - Next.js App Router
  - Tailwind CSS
  - TypeScript

- **Built-in Accessibility**: Components are built on top of Radix UI primitives, which means you get robust accessibility features out of the box (proper ARIA attributes, keyboard navigation, focus management).

Let’s look at a practical example of how Shadcn works:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// When you run `npx shadcn@latest add button`
// It creates this in your components/ui/button.tsx:
&#10;import * as React from &quot;react&quot;
import { Slot } from &quot;@radix-ui/react-slot&quot;
import { cva, type VariantProps } from &quot;class-variance-authority&quot;
import { cn } from &quot;@/lib/utils&quot;
&#10;const buttonVariants = cva(
  &quot;inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring&quot;,
  {
    variants: {
      variant: {
        default: &quot;bg-primary text-primary-foreground hover:bg-primary/90&quot;,
        destructive: &quot;bg-destructive text-destructive-foreground hover:bg-destructive/90&quot;,
        outline: &quot;border border-input hover:bg-accent hover:text-accent-foreground&quot;,
        // ... more variants
      },
      size: {
        default: &quot;h-10 px-4 py-2&quot;,
        sm: &quot;h-9 px-3&quot;,
        lg: &quot;h-11 px-8&quot;,
      },
    },
    defaultVariants: {
      variant: &quot;default&quot;,
      size: &quot;default&quot;,
    },
  }
)
&#10;// You can now use this button and customize it:
&lt;Button variant=&quot;outline&quot; size=&quot;lg&quot;&gt;
  Click me
&lt;/Button&gt;</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### Real-World Advantages:

- **Maintainability**: All component code is in your project, making debugging and modifications straightforward
- **Performance**: No extra npm packages to download or bundle
- **Flexibility**: Easy to adapt components to your specific needs
- **Type Safety**: Built with TypeScript for better development experience

## Tailwind Best Practices

Let me explain why these two Tailwind practices are particularly valuable for development:

### Organize Classes Logically

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>&lt;div
  className={cn(
    // Layout
    &quot;flex flex-col items-center&quot;,
    // Spacing
    &quot;gap-4 p-6&quot;,
    // Typography
    &quot;text-sm font-medium&quot;,
    // Visual
    &quot;rounded-lg bg-white shadow-sm&quot;,
    // States
    &quot;hover:bg-gray-50&quot;,
    // Responsive
    &quot;md:flex-row lg:p-8&quot;
  )}
&gt;</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This pattern brings several key benefits:

- **Readability**: By grouping related classes together with comments, you can quickly scan and understand what each group of classes is responsible for. Instead of having one long string of classes where you have to mentally parse what each class does, you can immediately see “ah, these classes handle layout, these handle spacing, etc.”

- **Maintainability**: When you need to modify styles, you know exactly where to look. Need to adjust spacing? Look at the spacing group. Need to change the responsive behavior? Check the responsive group. This makes maintenance much faster and reduces the chance of accidentally modifying the wrong styles.

- **Collaboration**: When working in a team, other developers can quickly understand and modify your styling choices. The clear organization creates a shared understanding of how styles are structured.

- **Debugging**: If there’s a visual issue, the logical grouping helps you quickly identify which group of styles might be causing the problem. This is much faster than scanning through a long unorganized string of classes.

### Use Custom Classes for Repeated Patterns

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      spacing: {
        &#39;safe-top&#39;: &#39;env(safe-area-inset-top)&#39;,
        &#39;safe-bottom&#39;: &#39;env(safe-area-inset-bottom)&#39;,
      },
    },
  },
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This approach is valuable because:

- **DRY (Don’t Repeat Yourself)**: Instead of writing the same combinations of utility classes over and over, you can define a custom class once and reuse it. This is especially useful for patterns that appear frequently in your application.

- **Consistency**: When values like spacing, colors, or other design tokens are defined in your configuration, you ensure consistent usage across your application. If you need to update a value, you only need to change it in one place.

- **Theme Customization**: Custom classes in your Tailwind config make it easier to maintain a consistent theme and make global changes. For example, if your design system changes, you can update the values in one place rather than finding and replacing classes throughout your codebase.

- **Better Abstractions**: In the example shown, we’re creating semantic names for safe areas (`safe-top`, `safe-bottom`) instead of using raw environment variables everywhere. This creates a more meaningful abstraction that’s easier to understand and use.

- **Type Safety and Autocomplete**: When you define custom classes in your Tailwind config, they become available in your IDE’s autocomplete, making it easier to use them correctly and consistently.

Think of it this way: The first practice (logical organization) is like having a well-organized toolbox where each tool has its designated compartment. The second practice (custom classes) is like creating your own specialized tools that perfectly fit your specific needs instead of combining basic tools every time.

These practices not only make your code more maintainable and easier to understand but also help prevent errors and make your development process more efficient. They’re especially valuable as your project grows and when working in a team where clear organization and consistent patterns become crucial for successful collaboration.

### Component Structure

Let me explain this Button component structure as it’s a great example of our approach to building reusable, type-safe components in Next.js 14.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>interface ButtonProps extends React.ButtonHTMLAttributes&lt;HTMLButtonElement&gt; {
  variant?: &#39;primary&#39; | &#39;secondary&#39; | &#39;ghost&#39;
  size?: &#39;sm&#39; | &#39;md&#39; | &#39;lg&#39;
  isLoading?: boolean
}
&#10;export function Button({
  variant = &#39;primary&#39;,
  size = &#39;md&#39;,
  isLoading,
  children,
  className,
  ...props
}: ButtonProps) {
  return (
    &lt;button
      className={cn(
        // Base styles
        &quot;inline-flex items-center justify-center rounded-md font-medium&quot;,
        // Variants
        {
          &#39;bg-primary text-white&#39;: variant === &#39;primary&#39;,
          &#39;bg-secondary text-gray-900&#39;: variant === &#39;secondary&#39;,
          &#39;bg-transparent&#39;: variant === &#39;ghost&#39;,
        },
        // Sizes
        {
          &#39;h-8 px-3 text-sm&#39;: size === &#39;sm&#39;,
          &#39;h-10 px-4&#39;: size === &#39;md&#39;,
          &#39;h-12 px-6 text-lg&#39;: size === &#39;lg&#39;,
        },
        // States
        &quot;disabled:opacity-50&quot;,
        className
      )}
      disabled={isLoading}
      {...props}
    &gt;
      {isLoading ? &lt;Spinner className=&quot;mr-2&quot; /&gt; : null}
      {children}
    &lt;/button&gt;
  )
}</code></pre>
<p>First, let’s look at how we’re defining the component’s props:</p>
<pre><code>interface ButtonProps extends React.ButtonHTMLAttributes&lt;HTMLButtonElement&gt; {
  variant?: &#39;primary&#39; | &#39;secondary&#39; | &#39;ghost&#39;
  size?: &#39;sm&#39; | &#39;md&#39; | &#39;lg&#39;
  isLoading?: boolean
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This is powerful because:

- We’re extending the native HTML button attributes, so our component gets all standard button props like `onClick`, `disabled`, etc.
- We’re adding our own custom props (`variant`, `size`, `isLoading`) with strict type definitions
- Using TypeScript unions for `variant` and `size` ensures only valid values can be passed

The component implementation demonstrates several best practices:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export function Button({
  variant = &#39;primary&#39;,  // Default variant
  size = &#39;md&#39;,         // Default size
  isLoading,
  children,
  className,          // Allow custom classes
  ...props            // Spread remaining props
}: ButtonProps) {</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

We’re using:

- Default values for optional props
- Props destructuring for clarity
- Rest parameters (`...props`) to pass through any additional HTML button attributes

The className structure is particularly interesting:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>className={cn(
  // Base styles
  &quot;inline-flex items-center justify-center rounded-md font-medium&quot;,
  // Variants
  {
    &#39;bg-primary text-white&#39;: variant === &#39;primary&#39;,
    &#39;bg-secondary text-gray-900&#39;: variant === &#39;secondary&#39;,
    &#39;bg-transparent&#39;: variant === &#39;ghost&#39;,
  },
  // Sizes
  {
    &#39;h-8 px-3 text-sm&#39;: size === &#39;sm&#39;,
    &#39;h-10 px-4&#39;: size === &#39;md&#39;,
    &#39;h-12 px-6 text-lg&#39;: size === &#39;lg&#39;,
  },
  // States
  &quot;disabled:opacity-50&quot;,
  className
)}
</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This approach:

- Uses the `cn()` utility to merge Tailwind classes conditionally
- Groups styles logically (base, variants, sizes, states)
- Allows for style overrides through the className prop
- Maintains consistency while allowing flexibility

Finally, the loading state handling:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>{isLoading ? &lt;Spinner className=&quot;mr-2&quot; /&gt; : null}
{children}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This provides visual feedback during loading states while maintaining the button’s content structure.

This component structure sets a foundation that we can follow for other components, ensuring consistency, type safety, and reusability across our application.

## State Management

### What is State Management?

Think of state management like the memory of your web application. It’s how your application keeps track of:

- What data is being displayed
- What the user is doing
- What’s happening right now
- What has changed

Just like how you remember things in different ways (short-term vs. long-term memory), web applications have different types of state:

As a picture is as good as a thousand words. Here is a diagram representing a user interacting our application

<img src="media/image1.png" style="width:6.5in;height:4.27847in" alt="A diagram of a computer component Description automatically generated" />

The diagram above illustrates how server and client state interact in a Next.js application. The server side handles persistent data and heavy computations, while the client side manages user interactions and temporary UI state. This separation allows for better performance and user experience while maintaining data consistency.

Let me break down the diagram to explain what’s happening in both the server and client state sections.

### Server Components (Light Blue Section)

- **Database** → **React Server Component** → **Server Cache**
  - The flow starts with the Database (shown as a cylinder)
  - Data is fetched by React Server Components (RSC)
  - Results can be cached on the server for better performance
  - The server maintains this data centrally for all users

This is like when you fetch a list of products:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export default async function ProductList() {
  // Server fetches from database
  const products = await getProducts()
  // Server renders the initial HTML
  return &lt;div&gt;{products.map(...)}&lt;/div&gt;
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### Client Components (Light Pink Section)

- **User Interface** ← **Component State** ← **Form Input & UI Toggle**
  - Shows how local state updates in the browser
  - Form inputs and UI toggles update the component state
  - Component state then updates what the user sees
  - This all happens in the user’s browser without server trips

Example of client-side state:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>&#39;use client&#39;
export function ShoppingCartButton() {
  // Local state in browser
  const [isOpen, setIsOpen] = useState(false)
  return (
    &lt;button onClick={() =&gt; setIsOpen(!isOpen)}&gt;
      {isOpen ? &#39;Close Cart&#39; : &#39;Open Cart&#39;}
    &lt;/button&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### The Connection

- **User** can interact with Forms and Toggles
- **React Server Component** provides initial data to the UI
- This shows how server and client work together:
  - Server provides the core data
  - Client handles interactive elements
  - User interactions update local state
  - Major updates can fetch fresh data from server

## Server State vs. Client State

### Server State

- **What it is**: Data that lives on the server, like:
  - User profiles in a database
  - Product listings
  - Blog posts
  - Comments
- **Characteristics**:
  - Persistent (stays around even after browser closes)
  - Shared between all users
  - Usually needs authentication to modify
  - Can be cached for performance

Here’s how server state works in practice:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// This component runs on the server
export default async function ProductsPage() {
  // Fetch products from database (server state)
  const products = await getProducts()
  &#10;  return (
    &lt;div&gt;
      {products.map(product =&gt; (
        &lt;ProductCard 
          key={product.id} 
          product={product}
        /&gt;
      ))}
    &lt;/div&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### Client State

- **What it is**: Temporary data that exists in the browser, like:
  - Is a dropdown menu open or closed?
  - What has the user typed in a form?
  - Is something loading?
  - Which tab is selected?
- **Characteristics**:
  - Temporary (goes away when page refreshes)
  - Specific to each user’s session
  - Can be updated instantly
  - Doesn’t need server communication

Here’s a real-world example:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>&#39;use client&#39;
&#10;function ShoppingCart() {
  // Client state: is the cart open?
  const [isCartOpen, setIsCartOpen] = useState(false)
  // Client state: what items are selected?
  const [selectedItems, setSelectedItems] = useState([])
&#10;  return (
    &lt;div&gt;
      &lt;button onClick={() =&gt; setIsCartOpen(!isCartOpen)}&gt;
        {isCartOpen ? &#39;Close Cart&#39; : &#39;Open Cart&#39;}
      &lt;/button&gt;
      &#10;      {isCartOpen &amp;&amp; (
        &lt;div className=&quot;cart-items&quot;&gt;
          {selectedItems.map(item =&gt; (
            &lt;CartItem key={item.id} item={item} /&gt;
          ))}
        &lt;/div&gt;
      )}
    &lt;/div&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### Why Is State Management Important?

Let’s use a real-world analogy: Think of a restaurant.

- **Server State** is like the kitchen:

  - Has the main inventory (database)
  - Prepares orders (processes data)
  - Maintains recipes (business logic)
  - Multiple servers share this information

- **Client State** is like each customer’s table:

  - Their current order status
  - Whether they’ve called for service
  - What’s in their temporary cart
  - Their menu preferences

## Best Practices in Next.js 14

### Use Server Components by Default

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// app/products/page.tsx
import { getProducts } from &#39;@/lib/products&#39; // Import the data fetching function
import { ProductGrid } from &#39;@/components/products/product-grid&#39; // Import the grid component
&#10;// Define the Product type
interface Product {
  id: string
  name: string
  price: number
  // ... other product properties
}
&#10;// Export the component and mark it as the default export for the page
export default async function ProductList() {
  const products: Product[] = await getProducts()
  &#10;  return (
    &lt;main className=&quot;container mx-auto py-6&quot;&gt;
      &lt;ProductGrid products={products} /&gt;
    &lt;/main&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

-

### `Use Client Components for Interactivity`

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>&#39;use client&#39;
&#10;function AddToCartButton({ productId }) {
  const [isAdding, setIsAdding] = useState(false)
  &#10;  async function handleClick() {
    setIsAdding(true)
    await addToCart(productId)
    setIsAdding(false)
  }
  &#10;  return (
    &lt;button 
      onClick={handleClick}
      disabled={isAdding}
    &gt;
      {isAdding ? &#39;Adding...&#39; : &#39;Add to Cart&#39;}
    &lt;/button&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### Keep State as Low as Possible

- Only lift state up when truly needed
- Keep client-side state minimal
- Use server components for data-heavy operations

## Navigation

### App Router Setup

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// app/layout.tsx
import { Navigation } from &#39;@/components/navigation&#39;
&#10;export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    &lt;html lang=&quot;en&quot;&gt;
      &lt;body&gt;
        &lt;Navigation /&gt;
        {children}
      &lt;/body&gt;
    &lt;/html&gt;
  )
}</code></pre>
<h3 id="protected-routes">Protected Routes</h3>
<pre><code>// middleware.ts
import { authMiddleware } from &#39;@clerk/nextjs&#39;
&#10;export default authMiddleware({
  publicRoutes: [&#39;/&#39;],
  ignoredRoutes: [&#39;/api/public&#39;]
})
&#10;export const config = {
  matcher: [&#39;/((?!.+\\.[\\w]+$|_next).*)&#39;, &#39;/&#39;, &#39;/(api|trpc)(.*)&#39;],
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

## Navigation Component

Let me explain what Navigation is in the context of these examples and why it’s important.

Think of Navigation as the way users move around different pages or sections of your website - like having a map and signposts for your application. The code examples show three key parts of setting up navigation in a Next.js 14 application:

### The Root Layout (`app/layout.tsx`):

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    &lt;html lang=&quot;en&quot;&gt;
      &lt;body&gt;
        &lt;Navigation /&gt;
        {children}
      &lt;/body&gt;
    &lt;/html&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This is like the main template of your website. It puts the Navigation component at the top of every page, similar to how most websites have a consistent menu bar that appears everywhere you go. This helps users always know where they are and how to get to other parts of the site.

### The Navigation Component:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>const routes = [
  { name: &#39;Home&#39;, path: &#39;/&#39; },
  { name: &#39;Dashboard&#39;, path: &#39;/dashboard&#39; },
  { name: &#39;Settings&#39;, path: &#39;/settings&#39; },
]</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This defines the actual menu items users can click on. Think of it like a table of contents for your website. Each route has a name (what users see) and a path (where clicking takes them). The component highlights which page you’re currently on, so users always know their location in the app.

### Protected Routes (in `middleware.ts`):

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export default authMiddleware({
  publicRoutes: [&#39;/&#39;],
  ignoredRoutes: [&#39;/api/public&#39;]
})</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This is like having a security guard that checks if users are allowed to visit certain pages. For example, you might want anyone to see your homepage, but only logged-in users should access their dashboard or settings.

Why is this important?

- Users can easily find their way around your application
- They always know which page they’re currently on
- They can’t accidentally access pages they’re not supposed to see
- The navigation stays consistent throughout the entire site
- It prevents users from getting lost or frustrated trying to find things

This solves common issues like:

- Users not knowing how to get from one page to another
- Confusion about which page they’re currently viewing
- Unauthorized access to protected content
- Inconsistent navigation between different pages

It’s similar to how a physical store has clear signs pointing to different departments and restricted areas - it makes the experience smooth and intuitive for users while maintaining security where needed.

## Error Handling

Let me explain how these error handling examples make your application safer and more user-friendly.

Think of error handling like having a safety net and a friendly guide when things go wrong in your app. Let’s break down what we’re doing with these two main components:

### The Global Error Handler

This is like having a universal backup plan for your entire application. Here’s what it does for you:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export default function GlobalError({
  error,
  reset,
}: {
  error: Error &amp; { digest?: string }
  reset: () =&gt; void
}) {
  useEffect(() =&gt; {
    Sentry.captureException(error)  // Sends error info to Sentry
  }, [error])
&#10;  return (
    // Shows a friendly error message
    &lt;div className=&quot;text-center&quot;&gt;
      &lt;h1&gt;Something went wrong!&lt;/h1&gt;
      &lt;button onClick={reset}&gt;Try again&lt;/button&gt;
    &lt;/div&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

When something unexpected happens:

- Instead of showing a scary error screen, your users see a friendly message
- They get a “Try again” button that might fix the problem
- Behind the scenes, the error is sent to Sentry (an error tracking service) so your development team can fix the issue
- You maintain a professional appearance even when things go wrong

### The API Error Handler

This handles errors that happen when your app is talking to the server. It’s like having a translator that turns technical errors into user-friendly messages:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export function handleApiError(error: unknown) {
  if (error instanceof AppError) {
    // For expected errors, give clear feedback
    return NextResponse.json({
      error: {
        message: error.message,
        code: error.code,
      }
    })
  }
&#10;  // For unexpected errors, give a safe, general message
  return NextResponse.json({
    error: {
      message: &#39;An unexpected error occurred&#39;,
      code: &#39;INTERNAL_SERVER_ERROR&#39;,
    }
  })
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This does several important things for you:

- Catches errors before they crash your app
- Provides clear, understandable messages when something goes wrong
- Hides technical details that might confuse users or pose security risks
- Logs problems so they can be fixed, while keeping your experience smooth

Together, these systems ensure that even when something goes wrong, you get a professional experience rather than a broken app, while the development team gets the information they need to fix the problem.

## Performance Optimization

## Core web Vitals

Let me explain Core Web Vitals and our performance optimization approach in a user-friendly way.

Core Web Vitals are like a report card for your website’s performance - they measure things that directly impact how users experience your site. Think of them as three key measurements: how fast your page loads, how quickly it becomes interactive, and how stable it is visually while loading.

Let’s look at how we’re optimizing these aspects:

### Image Optimization

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export function OptimizedImage() {
  return (
    &lt;Image
      src=&quot;/hero.jpg&quot;
      alt=&quot;Hero&quot;
      width={1200}
      height={600}
      priority={true}
      quality={85}
    /&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This code is using Next.js’s Image component which does several clever things:

- It automatically loads the right size image based on the user’s device (so mobile users don’t download huge desktop images)
- The `priority={true}` tells Next.js “this is an important image, load it right away” - great for hero images that users see first
- It automatically optimizes image quality (85% is usually the sweet spot between looking good and loading fast)
- It converts images to modern formats like WebP when browsers support them

### Preventing Layout Shifts

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>function ContentCard() {
  return (
    &lt;div className=&quot;aspect-video w-full&quot;&gt;
      &lt;Image
        src=&quot;/thumbnail.jpg&quot;
        alt=&quot;Thumbnail&quot;
        fill
        className=&quot;object-cover&quot;
      /&gt;
    &lt;/div&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This code prevents what we call “layout shift” - that annoying jump that happens when images load. It’s like reserving a parking space before the car arrives:

- `aspect-video` maintains a consistent width-to-height ratio
- The container holds the space even before the image loads
- When the image arrives, it fits perfectly into the reserved space
- No more content jumping around as things load!

##### Loading States

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export default function Loading() {
  return (
    &lt;div className=&quot;flex items-center justify-center min-h-screen&quot;&gt;
      &lt;LoadingSpinner /&gt;
    &lt;/div&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This provides immediate feedback to users when content is loading. Instead of showing a blank page or partial content:

- Users see a spinner that tells them “something is happening”
- It’s centered on the screen so it’s easy to notice
- It provides a smooth transition between states
- Users know the site is working, not broken

These optimizations are important because they directly impact user experience:

- Pages load faster and feel more responsive
- Content doesn’t jump around as it loads
- Users always know what’s happening
- The site feels more professional and polished
- It works better on all devices and connection speeds

Think of it like a well-organized restaurant - food (content) is prepared efficiently, your table (layout) is reserved before you arrive, and the staff (loading indicators) keeps you informed about what’s happening with your order. All these small details add up to create a much better experience.

## Testing

Let me explain component testing in Next.js and why it’s so important for catching issues before they reach your users.

Component testing is like having a quality control checkpoint for each individual piece of your application. Think of it like testing each part of a car separately before assembling the whole vehicle - you want to make sure each part works correctly on its own.

Let’s break down our testing setup:

First, we install three essential testing tools:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>yarn add -D @testing-library/react @testing-library/jest-dom jest</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- `@testing-library/react`: Lets us render and interact with React components in tests
- `@testing-library/jest-dom`: Provides special checks for React components
- `jest`: The main testing framework that runs our tests

Then, looking at our Button component test:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>describe(&#39;Button&#39;, () =&gt; {
  it(&#39;renders correctly&#39;, () =&gt; {
    render(&lt;Button&gt;Click me&lt;/Button&gt;)
    expect(screen.getByRole(&#39;button&#39;)).toHaveTextContent(&#39;Click me&#39;)
  })
&#10;  it(&#39;handles click events&#39;, async () =&gt; {
    const handleClick = jest.fn()
    render(&lt;Button onClick={handleClick}&gt;Click me&lt;/Button&gt;)
    &#10;    await userEvent.click(screen.getByRole(&#39;button&#39;))
    expect(handleClick).toHaveBeenCalled()
  })
})</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This test does two important checks:

- It verifies that the button appears correctly with the right text
- It simulates a user clicking the button and confirms the click handler is called

Running these tests automatically during development helps catch issues early. For example, if someone accidentally breaks the button’s click functionality while making changes, these tests would fail immediately, alerting the developer before the broken code reaches production.

Think of it as having a tireless quality assurance team that checks every component in milliseconds, keeping your application reliable and bug-free. This is much better than finding issues after they’re already affecting your users.

# Security with Clerk Authentication

In modern web applications, security isn’t optional - it’s essential. Our Next.js 14 application uses Clerk for authentication and user management, combined with additional security measures to protect both our users and their data.

Authentication is like having a sophisticated security system for your application. Just as a building needs more than just a lock on the front door, our application needs multiple layers of security working together. We implement this through three main components:

- A secure authentication provider that wraps our entire application
- Protected routes that verify user access
- Security headers that prevent common web attacks

Let’s look at how each of these components works and why they’re important for keeping our application secure.

### Authentication Setup (ClerkProvider)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// app/layout.tsx
import { ClerkProvider } from &#39;@clerk/nextjs&#39;
&#10;export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    &lt;ClerkProvider&gt;
      &lt;html lang=&quot;en&quot;&gt;
        &lt;body&gt;{children}&lt;/body&gt;
      &lt;/html&gt;
    &lt;/ClerkProvider&gt;  
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This is like putting a security system around your entire application. By wrapping everything in `ClerkProvider`, you ensure that:

- Every part of your app has access to authentication services
- User sessions are managed securely
- Login states are maintained properly
- Authentication happens at the highest level possible, protecting everything inside

### Protected API Routes

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>import { auth } from &#39;@clerk/nextjs&#39;
import { NextResponse } from &#39;next/server&#39;
&#10;export async function GET(request: Request) {
  const { userId } = auth()
&#10;  if (!userId) {
    return NextResponse.json({ error: &#39;Unauthorized&#39; }, { status: 401 })
  }
&#10;  // Protected route logic
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Think of this as a security guard checking ID cards before letting people access sensitive areas:

- It checks if the user is logged in (`userId`)
- If they’re not logged in, they get an “Unauthorized” message
- Only authenticated users can access the protected data or functionality
- It prevents unauthorized access to your API endpoints

### Security Headers (Middleware)

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// middleware.ts
import { NextResponse } from &#39;next/server&#39;
import type { NextRequest } from &#39;next/server&#39;
&#10;export function middleware(request: NextRequest) {
  const response = NextResponse.next()
&#10;  // Add security headers
  response.headers.set(&#39;X-Frame-Options&#39;, &#39;DENY&#39;)
  response.headers.set(&#39;X-Content-Type-Options&#39;, &#39;nosniff&#39;)
  response.headers.set(&#39;Referrer-Policy&#39;, &#39;origin-when-cross-origin&#39;)
&#10;  return response
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

These headers are like extra locks on your doors. Each one serves a specific security purpose:

- `X-Frame-Options: DENY`: Prevents your site from being embedded in iframes on other websites, protecting against clickjacking attacks
- `X-Content-Type-Options: nosniff`: Stops browsers from trying to guess the type of content being sent, preventing malicious file execution
- `Referrer-Policy: origin-when-cross-origin`: Controls how much information about your site is shared when users click links to other websites

Together, these three layers of security work to:

- Protect user identity and sessions
- Guard sensitive data and operations
- Prevent common web security vulnerabilities
- Ensure only authorized users can access protected resources

This is like having a complete security system with ID verification at the door, security guards inside, and protective barriers around the building - each playing its part in keeping your application and its users safe.

## Internationalization (i18n)

Let me explain what’s happening in these two code sections and why building internationalization (i18n) into your app from the start is so valuable.

##### Setup

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>// app/[lang]/layout.tsx
interface RootLayoutProps {
  children: React.ReactNode
  params: {
    lang: string
  }
}
&#10;export function generateStaticParams() {
  return [{ lang: &#39;en&#39; }, { lang: &#39;es&#39; }, { lang: &#39;fr&#39; }]
}
&#10;export default function RootLayout({
  children,
  params: { lang },
}: RootLayoutProps) {
  return (
    &lt;html lang={lang}&gt;
      &lt;body&gt;{children}&lt;/body&gt;
    &lt;/html&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### The Setup Code (app/\[lang\]/layout.tsx)

This code creates the foundation for supporting multiple languages in your Next.js app. Let’s break it down:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>interface RootLayoutProps {
  children: React.ReactNode
  params: {
    lang: string
  }
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This defines what information our layout needs: the content to display (`children`) and which language to use (`lang`). The language comes from the URL - so `/es/about` would show the About page in Spanish.

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export function generateStaticParams() {
  return [{ lang: &#39;en&#39; }, { lang: &#39;es&#39; }, { lang: &#39;fr&#39; }]
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This tells Next.js which languages your app supports. Here, it’s saying “build pages for English, Spanish, and French.” Next.js uses this to pre-build all your pages in each language at build time, making them load super fast.

### The Translation System (lib/i18n/index.ts)

This code handles the actual translations:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>const messages = {
  en: {
    greeting: &#39;Hello, {name}!&#39;,
    items: {
      one: &#39;{count} item&#39;,
      other: &#39;{count} items&#39;
    }
  }
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This is like a dictionary for each language. The clever part is using placeholders like `{name}` and having different forms for singular/plural - so you can say “1 item” but “2 items” correctly in each language.

### Why Do This From the Start?

Building i18n support from the beginning is like laying the proper foundation for a house that you might want to expand later. Here’s why it’s smart:

- No need to rewrite code: All your text is already set up for translation from day one
- Better structure: Your code is organized with translation in mind from the start
- URL structure: Your app automatically handles language-specific URLs properly
- Performance: Next.js can optimize and pre-build pages for each language
- Easier scaling: When you need to add a new language, you just add translations - no restructuring needed

This approach means that when your app needs to expand to new markets or languages, you’re not rebuilding - you’re just adding new translations to your existing system. It’s much easier than trying to add language support after everything is built.

## Mobile and Safe Areas

Safe Area Management is a crucial concept that comes from mobile design but is increasingly important for web applications too. Think of safe areas as the parts of the screen that are definitely visible and interactive - avoiding things like phone notches, rounded corners, or system interface elements like the home indicator on newer iPhones.

In modern web development, this becomes especially important because people use websites on all sorts of devices. A website needs to look good and work well whether it’s on a laptop, an iPhone with a notch, or a foldable Android device. That’s where safe area management comes in.

### Safe Container Component

Looking at our first component:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export function SafeContainer({ children }: { children: React.ReactNode }) {
  return (
    &lt;div className={cn(
      &quot;min-h-screen w-full&quot;,
      &quot;pt-[env(safe-area-inset-top,0px)]&quot;,
      &quot;pb-[env(safe-area-inset-bottom,0px)]&quot;,
      &quot;pl-[env(safe-area-inset-left,0px)]&quot;,
      &quot;pr-[env(safe-area-inset-right,0px)]&quot;
    )}&gt;
      {children}
    &lt;/div&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This component creates a safe container that automatically adjusts its padding to respect the safe areas of any device. It’s like having smart margins that expand or contract depending on the device’s screen shape and system interface elements. The `env(safe-area-inset-*)` values are special CSS variables that the browser provides, telling us exactly how much space we need to leave around the edges of our content.

### Bottom Navigation

The second component shows how we handle navigation bars on mobile:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export function BottomNav() {
  return (
    &lt;nav className={cn(
      &quot;fixed bottom-0 left-0 right-0&quot;,
      &quot;flex items-center justify-around&quot;,
      &quot;h-16 bg-background border-t&quot;,
      &quot;pb-[env(safe-area-inset-bottom)]&quot;
    )}&gt;
      {routes.map((route) =&gt; (
        &lt;Link
          key={route.path}
          href={route.path}
          className=&quot;flex flex-col items-center p-2&quot;
        &gt;
          &lt;route.icon className=&quot;h-6 w-6&quot; /&gt;
          &lt;span className=&quot;text-xs&quot;&gt;{route.name}&lt;/span&gt;
        &lt;/Link&gt;
      ))}
    &lt;/nav&gt;
  )
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This creates a bottom navigation bar that respects the safe area at the bottom of the screen - particularly important on devices with home indicators or gesture bars. The navigation stays fixed to the bottom but adds extra padding when needed to stay above system UI elements. This ensures your navigation buttons are always easily tappable and never hidden behind system interfaces.

Together, these components ensure your web application feels native and polished on any device, automatically adapting to different screen shapes and system interfaces.

## Database Management using Drizzle ORM

Database management is like organizing and interacting with your application’s data storage. Think of it as a highly organized filing system where you can store, retrieve, and update information efficiently. Drizzle ORM helps us manage this system with type safety and a clean, intuitive API.

Drizzle ORM is particularly powerful because it’s database-agnostic - meaning you can switch between different SQL databases (like PostgreSQL, MySQL, or SQLite) without changing much of your code. It’s like having a universal translator that can speak to different databases in their own language.

Let’s look at a practical example. Say we have this SQL schema for a person:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    birth_date DATE,
    phone VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

In Drizzle ORM, we’d write this as:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>import { pgTable, serial, text, date, timestamp } from &#39;drizzle-orm/pg-core&#39;
&#10;export const person = pgTable(&#39;person&#39;, {
  id: serial(&#39;id&#39;).primaryKey(),
  firstName: text(&#39;first_name&#39;).notNull(),
  lastName: text(&#39;last_name&#39;).notNull(),
  email: text(&#39;email&#39;).notNull().unique(),
  birthDate: date(&#39;birth_date&#39;),
  phone: text(&#39;phone&#39;),
  createdAt: timestamp(&#39;created_at&#39;).defaultNow()
})</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Now, looking at our example code:

The schema setup (`lib/db/schema.ts`) is like creating a blueprint for our database:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export const users = pgTable(&#39;users&#39;, {
  id: serial(&#39;id&#39;).primaryKey(),
  name: text(&#39;name&#39;).notNull(),
  email: text(&#39;email&#39;).notNull().unique(),
  createdAt: timestamp(&#39;created_at&#39;).defaultNow()
})</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This tells Drizzle exactly what our data should look like - every user needs a name and unique email, and we’ll automatically record when they were created.

The database connection (`lib/db/index.ts`) is how we connect to our database:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>import { sql } from &#39;@vercel/postgres&#39;
import { drizzle } from &#39;drizzle-orm/vercel-postgres&#39;
&#10;export const db = drizzle(sql)</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This creates a connection to our Vercel Postgres database that we can use throughout our application.

### Database Operations

Finally, our database operations (`lib/db/actions.ts`) are like the instructions for working with our data:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>export async function getUser(id: number) {
  const [user] = await db.select().from(users).where(eq(users.id, id))
  return user
}
&#10;export async function createUser(data: { name: string; email: string }) {
  const [user] = await db.insert(users).values(data).returning()
  return user
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

These functions let us find users by their ID or create new users, with Drizzle handling all the complex SQL operations behind the scenes. It’s like having a friendly assistant who knows how to translate your simple requests into database operations.

This setup gives us a type-safe, efficient way to manage our database operations while keeping our code clean and maintainable.

## Deployment (Vercel)

Let me explain Vercel CLI and deployment configuration for Next.js 14 applications.

### What is Vercel CLI?

Vercel CLI is a command-line interface tool that allows you to interact with and deploy your Next.js applications to Vercel directly from your terminal. Think of it as a direct line of communication between your local development environment and Vercel’s deployment platform. You can install it globally using:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>npm i -g vercel</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

### Automated Deployment with vercel.json

The `vercel.json` file acts like a set of instructions telling Vercel exactly how to build and deploy your application. Let’s break down each part of the configuration:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>{
  &quot;framework&quot;: &quot;nextjs&quot;,
  &quot;buildCommand&quot;: &quot;yarn build&quot;,
  &quot;devCommand&quot;: &quot;yarn dev&quot;,
  &quot;installCommand&quot;: &quot;yarn install&quot;,
  &quot;regions&quot;: [&quot;cdg1&quot;],
  &quot;env&quot;: {
    &quot;NEXT_PUBLIC_APP_URL&quot;: &quot;@app_url&quot;,
    &quot;DATABASE_URL&quot;: &quot;@database_url&quot;
  }
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Here’s what each setting does:

- `"framework": "nextjs"` - Tells Vercel this is a Next.js application, so it knows which optimizations to apply
- `"buildCommand": "yarn build"` - The command to create a production version of your app
- `"devCommand": "yarn dev"` - The command used when running development previews
- `"installCommand": "yarn install"` - How to install your project dependencies
- `"regions": ["cdg1"]` - Deploys your app to the Paris (CDG) region for optimal European performance
- `"env"` - Links your environment variables to Vercel’s environment system using `@` references

### Build Optimizations

The build configuration in your `vercel.json` is optimized for production deployments:

- Using `yarn` commands ensures consistent package management
- The CDG region placement optimizes for European users
- Environment variables are securely managed through Vercel’s system rather than being hardcoded
- The framework specification allows Vercel to apply Next.js-specific optimizations automatically

All of this works together to create a streamlined deployment process where you can simply run `vercel deploy` and have your application built and deployed with the correct settings and optimizations automatically applied.

### Build Optimization

Let me explain what’s happening in the `next.config.js` configuration file:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><code>/** </code><code>@type</code><code> {import('next').NextConfig} */</code><br />
<code>const</code><code> nextConfig </code><code>=</code><code> {</code><br />
<code>  images</code><code>:</code><code> {</code><br />
<code>    formats</code><code>:</code><code> [</code><code>'image/avif'</code><code>,</code><code> </code><code>'image/webp'</code><code>]</code><code>,</code><br />
<code>    deviceSizes</code><code>:</code><code> [</code><code>640</code><code>,</code><code> </code><code>750</code><code>,</code><code> </code><code>828</code><code>,</code><code> </code><code>1080</code><code>,</code><code> </code><code>1200</code><code>,</code><code> </code><code>1920</code><code>]</code><code>,</code><br />
<code>    imageSizes</code><code>:</code><code> [</code><code>16</code><code>,</code><code> </code><code>32</code><code>,</code><code> </code><code>48</code><code>,</code><code> </code><code>64</code><code>,</code><code> </code><code>96</code><code>,</code><code> </code><code>128</code><code>,</code><code> </code><code>256</code><code>,</code><code> </code><code>384</code><code>]</code><code>,</code><br />
<code>  }</code><code>,</code><br />
<code>  experimental</code><code>:</code><code> {</code><br />
<code>    serverActions</code><code>:</code><code> </code><code>true</code><code>,</code><br />
<code>  }</code><code>,</code><br />
<code>}</code></p>
<pre><code>module.exports = nextConfig</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This configuration is optimizing two key aspects of your Next.js application:

### Image Optimization

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>images: {
  formats: [&#39;image/avif&#39;, &#39;image/webp&#39;],
  deviceSizes: [640, 750, 828, 1080, 1200, 1920],
  imageSizes: [16, 32, 48, 64, 96, 128, 256, 384],
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

- `formats`: Specifies that images should be served in modern formats like AVIF and WebP, which provide better compression and quality
- `deviceSizes`: Defines breakpoints for responsive images, helping Vercel generate optimized versions for different screen sizes
- `imageSizes`: Specifies the sizes for smaller images like thumbnails and icons

This configuration helps Vercel:

- Generate optimized images during build time
- Serve the right image size for each device
- Use modern image formats when browsers support them
- Reduce bandwidth usage and improve loading times

### Experimental Features

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>experimental: {
  serverActions: true,
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

This enables Next.js 14’s server actions feature, allowing Vercel to optimize server-side mutations and data handling during the build process.

When Vercel builds your application, it uses this configuration to:

- Generate optimized image assets
- Set up proper caching headers
- Configure the build output for optimal performance
- Enable modern Next.js features that improve application performance

## Development Workflow

Let me explain the Development Workflow section of our Next.js 14 guide.

Development workflow refers to the standardized process and tools we use while developing our application. It includes the commands we run for different tasks and automated checks that help maintain code quality. Think of it as the set of rules and tools that help keep our development process smooth and consistent.

Let’s look at the Yarn Commands first. These are the essential commands you’ll use regularly during development:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>yarn dev          # Starts a local development server with hot-reload
yarn build        # Creates an optimized production version of your app
yarn start        # Runs the built production version locally
yarn lint         # Checks your code for potential errors and style issues
yarn test         # Runs your test suite to verify everything works</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

For database management, we have two specific commands:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>yarn drizzle-kit push:pg  # Updates your database schema with any changes
yarn drizzle-kit studio   # Opens a visual interface to manage your database</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

Now, let’s talk about Pre-commit Hooks. These are like quality control checkpoints that run automatically before your code is committed to the repository. Here’s how they’re configured in our package.json:

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><pre><code>{
  &quot;scripts&quot;: {
    &quot;precommit&quot;: &quot;lint-staged&quot;
  },
  &quot;lint-staged&quot;: {
    &quot;*.{ts,tsx}&quot;: [
      &quot;eslint --fix&quot;,
      &quot;prettier --write&quot;
    ]
  }
}</code></pre></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

These hooks do two important things automatically when you try to commit code:

- ESLint checks and fixes potential code issues
- Prettier formats your code to maintain consistent style

This automation ensures that all code going into the repository meets our quality standards and follows consistent formatting, preventing issues before they make it into the codebase. It’s like having an automated code reviewer that catches common issues and fixes formatting before your code is committed.

## Best Practices Checklist

### Development

- \[ \] Use TypeScript strict mode
- \[ \] Implement proper error boundaries
- \[ \] Follow mobile-first design
- \[ \] Use proper state management
- \[ \] Implement proper logging
- \[ \] Maintain documentation

### Security

- \[ \] Implement proper authentication
- \[ \] Use environment variables
- \[ \] Validate all inputs
- \[ \] Handle errors properly
- \[ \] Use security headers
- \[ \] Follow OWASP guidelines

### Performance

- \[ \] Use proper image optimization
- \[ \] Implement proper caching
- \[ \] Minimize client-side JavaScript
- \[ \] Use proper loading states
- \[ \] Monitor Core Web Vitals

### Testing

- \[ \] Write unit tests
- \[ \] Implement integration tests
- \[ \] Test error scenarios
- \[ \] Test loading states
- \[ \] Test responsive design

Remember:

- Keep code modular and reusable
- Follow consistent naming conventions
- Write clear documentation
- Test thoroughly
- Optimize for performance
- Keep security in mind
- Use TypeScript effectively
- Follow accessibility guidelines
