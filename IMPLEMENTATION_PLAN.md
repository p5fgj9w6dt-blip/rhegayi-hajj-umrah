# Implementation plan

1. Confirm business rules, currencies, plans, and permissions.
2. Implement authentication and account recovery.
3. Add tenant isolation: authenticated tenant context + PostgreSQL RLS.
4. Implement companies, staff, roles, and permission policies.
5. Implement pilgrims, trips, documents, visas, flights, and hotels.
6. Implement payments, expenses, receipts, and exchange-rate snapshots.
7. Implement subscription lifecycle and Super Admin operations.
8. Add reports, exports, notifications, audit trails, and backups.
9. Add automated tests, security review, staging deployment, then production deployment.

## Data protection
Passport and visa details are highly sensitive. Restrict access by role, encrypt transport and storage, use private file storage, record access events, and define retention/deletion procedures. Avoid storing unnecessary sensitive fields.
