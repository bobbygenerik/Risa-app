.class public abstract Lʿˉ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lʿˉ/ﹳٴ;->ﹳٴ:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static final ʽ(IILjava/lang/String;)Z
    .locals 2

    .prologue
    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lⁱᐧ/ʽ;->ٴﹶ(C)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lⁱᐧ/ʽ;->ٴﹶ(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ˈ(IIILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    :cond_1
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    move p2, p0

    :goto_1
    if-ge p2, p1, :cond_8

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    const/16 v3, 0x25

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0, p2, p3}, Lˊᐧ/ﾞᴵ;->ʽⁱ(IILjava/lang/String;)V

    :goto_3
    if-ge p2, p1, :cond_7

    invoke-virtual {p3, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    if-ne p0, v3, :cond_5

    add-int/lit8 v4, p2, 0x2

    if-ge v4, p1, :cond_5

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lⁱᐧ/ʽ;->ٴﹶ(C)I

    move-result v5

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lⁱᐧ/ʽ;->ٴﹶ(C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    if-eq v6, v7, :cond_6

    shl-int/lit8 p2, v5, 0x4

    add-int/2addr p2, v6

    invoke-virtual {v0, p2}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int p2, p0, v4

    goto :goto_3

    :cond_5
    if-ne p0, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p0}, Lˊᐧ/ﾞᴵ;->ⁱˉ(I)V

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p2, p0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ﹶᐧ()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ⁱˊ(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    and-int/lit8 v2, p8, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, p8, 0x40

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move/from16 v7, p7

    :goto_4
    move v8, v2

    :goto_5
    if-ge v8, v4, :cond_14

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    const/16 v10, 0x80

    const/16 v11, 0x20

    const/16 v12, 0x2b

    const/16 v13, 0x25

    const/16 v14, 0x7f

    if-lt v9, v11, :cond_8

    if-eq v9, v14, :cond_8

    if-lt v9, v10, :cond_5

    if-eqz v7, :cond_8

    :cond_5
    int-to-char v15, v9

    invoke-static {v1, v15}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v15

    if-nez v15, :cond_8

    if-ne v9, v13, :cond_6

    if-eqz v5, :cond_8

    if-eqz v6, :cond_6

    invoke-static {v8, v4, v0}, Lʿˉ/ﹳٴ;->ʽ(IILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_6
    if-ne v9, v12, :cond_7

    if-eqz p6, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_5

    :cond_8
    :goto_6
    new-instance v9, Lˊᐧ/ﾞᴵ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v2, v8, v0}, Lˊᐧ/ﾞᴵ;->ʽⁱ(IILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_7
    if-ge v8, v4, :cond_13

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    if-eqz v5, :cond_9

    const/16 v13, 0x9

    if-eq v15, v13, :cond_f

    const/16 v13, 0xa

    if-eq v15, v13, :cond_f

    const/16 v13, 0xc

    if-eq v15, v13, :cond_f

    const/16 v13, 0xd

    if-ne v15, v13, :cond_9

    goto :goto_a

    :cond_9
    const-string v13, "+"

    if-ne v15, v11, :cond_a

    const-string v10, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    if-ne v1, v10, :cond_a

    const/4 v10, 0x1

    invoke-virtual {v9, v3, v10, v13}, Lˊᐧ/ﾞᴵ;->ʽⁱ(IILjava/lang/String;)V

    :goto_8
    const/16 v10, 0x80

    goto :goto_a

    :cond_a
    if-ne v15, v12, :cond_c

    if-eqz p6, :cond_c

    if-eqz v5, :cond_b

    goto :goto_9

    :cond_b
    const-string v13, "%2B"

    :goto_9
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v3, v10, v13}, Lˊᐧ/ﾞᴵ;->ʽⁱ(IILjava/lang/String;)V

    goto :goto_8

    :cond_c
    if-lt v15, v11, :cond_10

    if-eq v15, v14, :cond_10

    const/16 v10, 0x80

    if-lt v15, v10, :cond_d

    if-eqz v7, :cond_11

    :cond_d
    int-to-char v13, v15

    invoke-static {v1, v13}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v13

    if-nez v13, :cond_11

    const/16 v13, 0x25

    if-ne v15, v13, :cond_e

    if-eqz v5, :cond_11

    if-eqz v6, :cond_e

    invoke-static {v8, v4, v0}, Lʿˉ/ﹳٴ;->ʽ(IILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v9, v15}, Lˊᐧ/ﾞᴵ;->ⁱˉ(I)V

    :cond_f
    :goto_a
    const/16 v10, 0x25

    goto :goto_d

    :cond_10
    const/16 v10, 0x80

    :cond_11
    :goto_b
    if-nez v2, :cond_12

    new-instance v2, Lˊᐧ/ﾞᴵ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :cond_12
    invoke-virtual {v2, v15}, Lˊᐧ/ﾞᴵ;->ⁱˉ(I)V

    :goto_c
    invoke-virtual {v2}, Lˊᐧ/ﾞᴵ;->ᵎⁱ()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {v2}, Lˊᐧ/ﾞᴵ;->readByte()B

    move-result v13

    and-int/lit16 v3, v13, 0xff

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    sget-object v16, Lʿˉ/ﹳٴ;->ﹳٴ:[C

    aget-char v3, v16, v3

    invoke-virtual {v9, v3}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    and-int/lit8 v3, v13, 0xf

    aget-char v3, v16, v3

    invoke-virtual {v9, v3}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    const/4 v3, 0x0

    const/16 v10, 0x80

    goto :goto_c

    :goto_d
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v8, v3

    move v13, v10

    const/4 v3, 0x0

    const/16 v10, 0x80

    goto/16 :goto_7

    :cond_13
    invoke-virtual {v9}, Lˊᐧ/ﾞᴵ;->ﹶᐧ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ﹳٴ(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    move v4, p2

    and-int/lit8 p1, p4, 0x8

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, p2

    :goto_1
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, p2

    :goto_2
    and-int/lit8 p1, p4, 0x20

    if-eqz p1, :cond_4

    move v8, v1

    goto :goto_3

    :cond_4
    move v8, p2

    :goto_3
    and-int/lit8 p1, p4, 0x40

    if-eqz p1, :cond_5

    move v9, v1

    goto :goto_4

    :cond_5
    move v9, p2

    :goto_4
    const/16 v10, 0x80

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v2 .. v10}, Lʿˉ/ﹳٴ;->ⁱˊ(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
