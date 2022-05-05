SELECT
    EMAIL.ID,
    EMAIL.PARENT_ID,
    EMAIL.MESSAGE_ID,
    EMAIL.SUBJECT,
    EMAIL.SENT_FROM,
    EMAIL.DATE,
    EMAIL.HIDDEN
FROM EMAIL
WHERE EMAIL.PARENT_ID = ?
ORDER BY EMAIL.DATE DESC
