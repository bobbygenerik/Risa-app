.class public final Lˉﹶ/ﹳٴ;
.super Lcom/google/android/gms/internal/measurement/ˏʻ;
.source "SourceFile"


# static fields
.field public static final ʼˎ:[C

.field public static final ˆʾ:[C


# instance fields
.field public final ᵎﹶ:Z

.field public final ᵔᵢ:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2b

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lˉﹶ/ﹳٴ;->ʼˎ:[C

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lˉﹶ/ﹳٴ;->ˆʾ:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lˉﹶ/ﹳٴ;->ᵎﹶ:Z

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length p2, p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_2

    aget-char v3, p1, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v0, p2

    new-array v0, v0, [Z

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_3

    aget-char v3, p1, v1

    aput-boolean p2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lˉﹶ/ﹳٴ;->ᵔᵢ:[Z

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ʿᵢ(Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1d

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, v0, Lˉﹶ/ﹳٴ;->ᵔᵢ:[Z

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-boolean v5, v6, v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v5, Lˏˏ/ﹳٴ;->ﹳٴ:Lcom/parse/ˑ;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    :goto_2
    const-string v9, "Cannot increase internal buffer any further"

    if-ge v4, v2, :cond_18

    if-ge v4, v2, :cond_17

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v12, 0xd800

    if-lt v11, v12, :cond_3

    const v12, 0xdfff

    if-le v11, v12, :cond_4

    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    const v12, 0xdbff

    const-string v13, "\'"

    const-string v14, " in \'"

    const-string v15, " at index "

    const/16 v16, 0x0

    const-string v3, "\' with value "

    if-gt v11, v12, :cond_7

    if-ne v10, v2, :cond_5

    neg-int v11, v11

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static {v11, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v11

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected low surrogate but got char \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected low surrogate character \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_3
    if-ltz v11, :cond_16

    array-length v3, v6

    const/16 v12, 0x20

    const/4 v13, 0x2

    if-ge v11, v3, :cond_8

    aget-boolean v3, v6, v11

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_4
    move/from16 v20, v12

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_8
    if-ne v11, v12, :cond_9

    iget-boolean v3, v0, Lˉﹶ/ﹳٴ;->ᵎﹶ:Z

    if-eqz v3, :cond_9

    sget-object v3, Lˉﹶ/ﹳٴ;->ʼˎ:[C

    goto :goto_4

    :cond_9
    const/16 v3, 0x7f

    sget-object v14, Lˉﹶ/ﹳٴ;->ˆʾ:[C

    const/16 v15, 0x25

    const/16 v17, 0x1

    const/4 v10, 0x3

    if-gt v11, v3, :cond_a

    new-array v3, v10, [C

    aput-char v15, v3, v16

    and-int/lit8 v10, v11, 0xf

    aget-char v10, v14, v10

    aput-char v10, v3, v13

    ushr-int/lit8 v10, v11, 0x4

    aget-char v10, v14, v10

    aput-char v10, v3, v17

    move/from16 v20, v12

    goto/16 :goto_5

    :cond_a
    const/16 v3, 0x7ff

    const/16 v18, 0x5

    move/from16 v19, v10

    const/16 v10, 0xc

    move/from16 v20, v12

    const/4 v12, 0x6

    const/16 v21, 0x4

    const/16 v22, 0x8

    if-gt v11, v3, :cond_b

    new-array v3, v12, [C

    aput-char v15, v3, v16

    aput-char v15, v3, v19

    and-int/lit8 v12, v11, 0xf

    aget-char v12, v14, v12

    aput-char v12, v3, v18

    ushr-int/lit8 v12, v11, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int/lit8 v12, v12, 0x8

    aget-char v12, v14, v12

    aput-char v12, v3, v21

    ushr-int/lit8 v12, v11, 0x6

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v14, v12

    aput-char v12, v3, v13

    ushr-int/lit8 v12, v11, 0xa

    or-int/2addr v10, v12

    aget-char v10, v14, v10

    aput-char v10, v3, v17

    goto/16 :goto_5

    :cond_b
    const v3, 0xffff

    move/from16 v23, v12

    const/16 v12, 0x9

    const/16 v24, 0x7

    if-gt v11, v3, :cond_c

    new-array v3, v12, [C

    aput-char v15, v3, v16

    const/16 v10, 0x45

    aput-char v10, v3, v17

    aput-char v15, v3, v19

    aput-char v15, v3, v23

    and-int/lit8 v10, v11, 0xf

    aget-char v10, v14, v10

    aput-char v10, v3, v22

    ushr-int/lit8 v10, v11, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/lit8 v10, v10, 0x8

    aget-char v10, v14, v10

    aput-char v10, v3, v24

    ushr-int/lit8 v10, v11, 0x6

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v14, v10

    aput-char v10, v3, v18

    ushr-int/lit8 v10, v11, 0xa

    and-int/lit8 v10, v10, 0x3

    or-int/lit8 v10, v10, 0x8

    aget-char v10, v14, v10

    aput-char v10, v3, v21

    ushr-int/lit8 v10, v11, 0xc

    aget-char v10, v14, v10

    aput-char v10, v3, v13

    goto :goto_5

    :cond_c
    const v3, 0x10ffff

    if-gt v11, v3, :cond_15

    new-array v3, v10, [C

    aput-char v15, v3, v16

    const/16 v10, 0x46

    aput-char v10, v3, v17

    aput-char v15, v3, v19

    aput-char v15, v3, v23

    aput-char v15, v3, v12

    and-int/lit8 v10, v11, 0xf

    aget-char v10, v14, v10

    const/16 v12, 0xb

    aput-char v10, v3, v12

    ushr-int/lit8 v10, v11, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/lit8 v10, v10, 0x8

    aget-char v10, v14, v10

    const/16 v12, 0xa

    aput-char v10, v3, v12

    ushr-int/lit8 v10, v11, 0x6

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v14, v10

    aput-char v10, v3, v22

    ushr-int/lit8 v10, v11, 0xa

    and-int/lit8 v10, v10, 0x3

    or-int/lit8 v10, v10, 0x8

    aget-char v10, v14, v10

    aput-char v10, v3, v24

    ushr-int/lit8 v10, v11, 0xc

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v14, v10

    aput-char v10, v3, v18

    ushr-int/lit8 v10, v11, 0x10

    and-int/lit8 v10, v10, 0x3

    or-int/lit8 v10, v10, 0x8

    aget-char v10, v14, v10

    aput-char v10, v3, v21

    ushr-int/lit8 v10, v11, 0x12

    and-int/lit8 v10, v10, 0x7

    aget-char v10, v14, v10

    aput-char v10, v3, v13

    :goto_5
    invoke-static {v11}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_d

    move v10, v13

    goto :goto_6

    :cond_d
    move/from16 v10, v17

    :goto_6
    add-int/2addr v10, v4

    if-eqz v3, :cond_13

    sub-int v11, v4, v7

    add-int v12, v8, v11

    array-length v13, v3

    add-int/2addr v13, v12

    array-length v14, v5

    if-ge v14, v13, :cond_10

    sub-int v14, v2, v4

    add-int/2addr v14, v13

    add-int/lit8 v14, v14, 0x20

    if-ltz v14, :cond_f

    new-array v9, v14, [C

    if-lez v8, :cond_e

    move/from16 v13, v16

    invoke-static {v5, v13, v9, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    move-object v5, v9

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_10
    :goto_7
    if-lez v11, :cond_11

    invoke-virtual {v1, v7, v4, v5, v8}, Ljava/lang/String;->getChars(II[CI)V

    move v8, v12

    :cond_11
    array-length v4, v3

    if-lez v4, :cond_12

    array-length v4, v3

    const/4 v13, 0x0

    invoke-static {v3, v13, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v8, v3

    :cond_12
    move v7, v10

    :cond_13
    move v4, v10

    :goto_8
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    array-length v9, v6

    if-ge v3, v9, :cond_2

    aget-boolean v3, v6, v3

    if-nez v3, :cond_14

    goto/16 :goto_2

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid unicode character value "

    invoke-static {v11, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trailing high surrogate at end of input"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index exceeds specified range"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    sub-int v3, v2, v7

    if-lez v3, :cond_1c

    add-int/2addr v3, v8

    array-length v4, v5

    if-ge v4, v3, :cond_1b

    if-ltz v3, :cond_1a

    new-array v4, v3, [C

    if-lez v8, :cond_19

    const/4 v13, 0x0

    invoke-static {v5, v13, v4, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    move-object v5, v4

    goto :goto_9

    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1b
    :goto_9
    invoke-virtual {v1, v7, v2, v5, v8}, Ljava/lang/String;->getChars(II[CI)V

    move v8, v3

    :cond_1c
    new-instance v1, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v1, v5, v13, v8}, Ljava/lang/String;-><init>([CII)V

    :cond_1d
    return-object v1
.end method
