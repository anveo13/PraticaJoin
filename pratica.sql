/* Questão 1 */

select users.id as "userId", users.name as "userName", cities.name as "cityName" from users
join cities on users."cityId" = cities.id where cities.name = 'Rio de Janeiro';

/* Questão 2 */
select testimonials.id, writers.name as writer, recipient.name as recipient, testimonials.message from testimonials
join users as writers on testimonials."writerId" = writers.id
join users as recipient on testimonials."recipientId" = recipient.id;

/* Questão 3 */
select educations."userId" as id, users.name, courses.name as course, schools.name as school, educations."endDate" from educations
join courses on educations."courseId" = courses.id
join users on educations."userId" = users.id
join schools on educations."schoolId" = schools.id
where status = 'finished' and "userId" = 30;

/* Questão 4 */
select experiences."userId" as id, users.name as name, roles.name as role, companies.name as company, experiences."startDate" from experiences
join companies on experiences."companyId" = companies.id
join roles on experiences."roleId" = roles.id
join users on experiences."userId" = users.id
where "userId" = 50 and "endDate" IS NULL;