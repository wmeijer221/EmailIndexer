SELECT
    EMAIL.ID,
    EMAIL.PARENT_ID,
    EMAIL.MESSAGE_ID,
    EMAIL.SUBJECT,
    EMAIL.SENT_FROM,
    EMAIL.DATE,
    EMAIL.HIDDEN
FROM EMAIL
LEFT JOIN EMAIL_TAG ET ON EMAIL.ID = ET.EMAIL_ID
LEFT JOIN TAG ON ET.TAG_ID = TAG.ID
WHERE TAG.ID = ?
GROUP BY EMAIL.ID
ORDER BY MAX(EMAIL.DATE) DESC
