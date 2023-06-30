-- AlterTable
ALTER TABLE "Package" ADD COLUMN     "description" VARCHAR(255);

-- AlterTable
ALTER TABLE "Robot" ALTER COLUMN "connected" SET DEFAULT true;
