.class public final Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;


# static fields
.field public static final ˉˆ:Lsun/misc/Unsafe;

.field public static final ᵔʾ:[I


# instance fields
.field public final ʼˎ:I

.field public final ʽ:I

.field public final ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;

.field public final ˈ:I

.field public final ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

.field public final ˑﹳ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

.field public final ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

.field public final ᵎﹶ:[I

.field public final ᵔᵢ:I

.field public final ⁱˊ:[Ljava/lang/Object;

.field public final ﹳٴ:[I

.field public final ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

.field public final ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ:[I

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˆʾ()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/ﹳٴ;[IIILcom/google/crypto/tink/shaded/protobuf/ˑٴ;Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ⁱˊ:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽ:I

    iput p4, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˈ:I

    instance-of p1, p5, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞᴵ:Z

    iput-object p6, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵎﹶ:[I

    iput p7, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔᵢ:I

    iput p8, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˎ:I

    iput-object p9, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;

    iput-object p10, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    iput-object p11, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    iput-object p5, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˑﹳ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    iput-object p13, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    return-void
.end method

.method public static ʽʽ(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static ʾˋ(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static ˊˋ(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static יـ(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼᐧ()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ᴵˊ(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static ᵔי(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static ᵢˏ(Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;)Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;
    .locals 34

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    :goto_a
    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ʽ:[Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v5, v11, 0x3

    new-array v5, v5, [I

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_35

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_15

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v6, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_17

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v6, v26

    or-int/2addr v2, v3

    move/from16 v6, v28

    :cond_18
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v20, 0x1

    aput v21, v15, v20

    move/from16 v20, v4

    :cond_19
    const/16 v4, 0x33

    move-object/from16 v30, v5

    if-lt v3, v4, :cond_22

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v5, 0xd800

    if-lt v6, v5, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    const/16 v31, 0xd

    :goto_f
    add-int/lit8 v32, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1a

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v31

    or-int/2addr v6, v4

    add-int/lit8 v31, v31, 0xd

    move/from16 v4, v32

    const v5, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v4, v31

    or-int/2addr v6, v4

    move/from16 v4, v32

    :cond_1b
    add-int/lit8 v5, v3, -0x33

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_1e

    const/16 v4, 0x11

    if-ne v5, v4, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v4, 0xc

    if-ne v5, v4, :cond_1f

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ﹳٴ()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v4

    if-nez v4, :cond_1d

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_1f

    :cond_1d
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    :goto_10
    move v10, v5

    goto :goto_12

    :cond_1e
    :goto_11
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    goto :goto_10

    :cond_1f
    :goto_12
    mul-int/lit8 v6, v6, 0x2

    aget-object v4, v24, v6

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_20

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_13

    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔי(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v24, v6

    :goto_13
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v24, v6

    move/from16 v28, v4

    instance-of v4, v5, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_21

    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_14

    :cond_21
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔי(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v24, v6

    :goto_14
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v7

    move v7, v4

    move/from16 v4, v28

    move/from16 v28, v5

    move v5, v10

    move/from16 v29, v31

    const/4 v6, 0x0

    move-object v10, v8

    goto/16 :goto_1f

    :cond_22
    add-int/lit8 v4, v10, 0x1

    aget-object v5, v24, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔי(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_23

    const/16 v4, 0x11

    if-ne v3, v4, :cond_24

    :cond_23
    move/from16 v28, v7

    const/4 v7, 0x1

    goto/16 :goto_18

    :cond_24
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_25

    const/16 v4, 0x31

    if-ne v3, v4, :cond_26

    :cond_25
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_17

    :cond_26
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_27

    goto :goto_15

    :cond_27
    const/16 v4, 0x32

    if-ne v3, v4, :cond_29

    add-int/lit8 v4, v22, 0x1

    aput v21, v15, v22

    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v28, v10, 0x2

    aget-object v29, v24, v31

    aput-object v29, v11, v22

    move/from16 v29, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v10, 0x3

    aget-object v10, v24, v28

    aput-object v10, v11, v22

    move/from16 v28, v7

    move-object v10, v8

    move/from16 v22, v29

    goto :goto_1a

    :cond_28
    move-object v10, v8

    move/from16 v4, v28

    move/from16 v22, v29

    move/from16 v28, v7

    goto :goto_1a

    :cond_29
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_19

    :cond_2a
    :goto_15
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ﹳٴ()I

    move-result v4

    move/from16 v28, v7

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2b

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2c

    :cond_2b
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    :goto_16
    move v4, v10

    move-object v10, v8

    goto :goto_1a

    :goto_17
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    goto :goto_16

    :goto_18
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v11, v4

    :cond_2c
    :goto_19
    move-object v10, v8

    move/from16 v4, v31

    :goto_1a
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v5, v7

    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_30

    const/16 v7, 0x11

    if-gt v3, v7, :cond_30

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v8, 0xd800

    if-lt v6, v8, :cond_2e

    and-int/lit16 v6, v6, 0x1fff

    const/16 v25, 0xd

    :goto_1b
    add-int/lit8 v29, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2d

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v25

    or-int/2addr v6, v7

    add-int/lit8 v25, v25, 0xd

    move/from16 v7, v29

    goto :goto_1b

    :cond_2d
    shl-int v7, v7, v25

    or-int/2addr v6, v7

    goto :goto_1c

    :cond_2e
    move/from16 v29, v7

    :goto_1c
    mul-int/lit8 v7, v28, 0x2

    div-int/lit8 v25, v6, 0x20

    add-int v25, v25, v7

    aget-object v7, v24, v25

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2f

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_1d

    :cond_2f
    check-cast v7, Ljava/lang/String;

    invoke-static {v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔי(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v24, v25

    :goto_1d
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    rem-int/lit8 v6, v6, 0x20

    goto :goto_1e

    :cond_30
    const v7, 0xfffff

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_1e
    const/16 v8, 0x12

    if-lt v3, v8, :cond_31

    const/16 v8, 0x31

    if-gt v3, v8, :cond_31

    add-int/lit8 v8, v23, 0x1

    aput v5, v15, v23

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    move/from16 v23, v8

    goto :goto_1f

    :cond_31
    move/from16 v33, v5

    move v5, v4

    move/from16 v4, v33

    :goto_1f
    add-int/lit8 v8, v21, 0x1

    aput v26, v30, v21

    add-int/lit8 v25, v21, 0x2

    move-object/from16 v26, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_20

    :cond_32
    const/4 v1, 0x0

    :goto_20
    move/from16 v31, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_33

    const/high16 v1, 0x10000000

    goto :goto_21

    :cond_33
    const/4 v1, 0x0

    :goto_21
    or-int v1, v31, v1

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_34

    const/high16 v2, -0x80000000

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    aput v1, v30, v8

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v7

    aput v1, v30, v25

    move-object v8, v10

    move-object/from16 v3, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v7, v28

    move/from16 v4, v29

    const v6, 0xd800

    move v10, v5

    move-object/from16 v5, v30

    goto/16 :goto_b

    :cond_35
    move-object/from16 v30, v5

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;

    iget-object v14, v0, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;->ﹳٴ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v30

    move-object v9, v1

    invoke-direct/range {v9 .. v22}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;-><init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/ﹳٴ;[IIILcom/google/crypto/tink/shaded/protobuf/ˑٴ;Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ʼᐧ;Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;)V

    return-object v9
.end method

.method public static ﾞʻ(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mutating immutable message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ʻٴ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    .prologue
    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v4

    :cond_3
    invoke-interface {p3, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʼʼ(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result p2

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final ʼˈ(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget p1, v0, p1

    return p1
.end method

.method public final ʼˎ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ـˏ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V

    return-void
.end method

.method public final ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;
    .locals 3

    .prologue
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    add-int/lit8 v2, p1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final ʽ(Ljava/lang/Object;)Z
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v6, 0xfffff

    const/4 v7, 0x0

    move v2, v6

    move v3, v7

    move v8, v3

    :goto_0
    iget v4, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔᵢ:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_b

    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵎﹶ:[I

    aget v4, v4, v8

    iget-object v9, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget v10, v9, v4

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v6

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v6, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    int-to-long v13, v12

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :cond_0
    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_1

    :cond_1
    move v15, v3

    move v3, v2

    move v2, v4

    move v4, v15

    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_9

    const/16 v12, 0x11

    if-eq v9, v12, :cond_9

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_6

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_5

    const/16 v5, 0x44

    if-eq v9, v5, :cond_5

    const/16 v5, 0x31

    if-eq v9, v5, :cond_6

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v9, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 v1, 0x0

    throw v1

    :cond_5
    invoke-virtual {v0, v10, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ʽ(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_6
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v2

    move v9, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ʽ(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ʽ(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_3
    return v7

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_b
    return v5
.end method

.method public final ʽﹳ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 4

    .prologue
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p2

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    iget-boolean v3, v3, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ʾˋ:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-static {v0, v1, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-static {p3}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ʾᵎ(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I
    .locals 11

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʽ(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ﾞᴵ(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˑﹳ(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->hashCode()I

    move-result p1

    add-int/2addr p1, v3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˆﾞ(ILjava/lang/Object;)V
    .locals 4

    .prologue
    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget p1, v0, p1

    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    const/4 v2, 0x1

    shl-int p1, v2, p1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v2

    or-int/2addr p1, v2

    invoke-static {v0, v1, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    return-void
.end method

.method public final ˈ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆʾ:Lcom/google/crypto/tink/shaded/protobuf/ˑٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˑﹳ:Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->יـ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    return-object v0
.end method

.method public final ˈʿ(II)I
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v2, v1, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final ˈٴ(JLjava/lang/Object;I)V
    .locals 3

    .prologue
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p3, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    iget-boolean v2, v2, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ʾˋ:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    invoke-virtual {v0, p3, p1, p2, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-static {p4}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final ˉʿ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2

    .prologue
    iget-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget p3, p3, p2

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p3, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    return-void
.end method

.method public final ˉˆ(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ⁱˊ:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final ˉٴ(Ljava/lang/Object;JLcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object p1

    iget-object p2, p4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    iget p3, p4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-interface {p5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0, p5, p6}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    invoke-interface {p5, v0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    if-eq v0, p3, :cond_0

    iput v0, p4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ˊʻ(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/ˈʻ;)I
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p6

    move/from16 v2, p7

    move-wide/from16 v3, p10

    move/from16 v10, p12

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    add-int/lit8 v6, v10, 0x2

    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget v6, v7, v6

    const v7, 0xfffff

    and-int/2addr v6, v7

    int-to-long v6, v6

    const/4 v8, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x2

    packed-switch p9, :pswitch_data_0

    :cond_0
    move/from16 v10, p3

    goto/16 :goto_3

    :pswitch_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼʼ(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v3, p5, -0x8

    or-int/lit8 v7, v3, 0x4

    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lﹳٴ/ﹳٴ;->ˈٴ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;[BIIILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v3

    invoke-virtual {v0, v1, v9, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˋᵔ(Ljava/lang/Object;ILjava/lang/Object;I)V

    return v3

    :pswitch_1
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1

    invoke-static {v11, v8, v13}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget-wide v10, v13, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˑﹳ(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_1
    move v10, v8

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1

    invoke-static {v11, v8, v13}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v8, v13, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈ(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1

    invoke-static {v11, v8, v13}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v8, v13, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_4
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-ne v2, v12, :cond_1

    invoke-static {v11, v8, v13}, Lﹳٴ/ﹳٴ;->ᵎﹶ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget-object v8, v13, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    move-object/from16 v11, p2

    move/from16 v8, p3

    move-object/from16 v13, p13

    if-ne v2, v12, :cond_1

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼʼ(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v3

    move/from16 v6, p4

    move v5, v8

    move-object v4, v11

    move-object v7, v13

    invoke-static/range {v2 .. v7}, Lﹳٴ/ﹳٴ;->ᴵᵔ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v3

    invoke-virtual {v0, v1, v9, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˋᵔ(Ljava/lang/Object;ILjava/lang/Object;I)V

    return v3

    :pswitch_6
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-ne v2, v12, :cond_6

    invoke-static {v13, v10, v8}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v8, v8, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-nez v8, :cond_2

    const-string v8, ""

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/high16 v10, 0x20000000

    and-int v10, p8, v10

    if-eqz v10, :cond_4

    add-int v10, v2, v8

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v11, v13, v2, v10}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵔי([BII)I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_4
    :goto_0
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v10, v13, v2, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v5, v1, v3, v4, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v8

    :goto_1
    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_7
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-nez v2, :cond_6

    invoke-static {v13, v10, v8}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget-wide v12, v8, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v8, :cond_6

    invoke-static {v10, v13}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x4

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_9
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v11, :cond_6

    invoke-static {v10, v13}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x8

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_a
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-nez v2, :cond_6

    invoke-static {v13, v10, v8}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v8, v8, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    move-object/from16 v13, p2

    move/from16 v10, p3

    move-object/from16 v8, p13

    if-nez v2, :cond_6

    invoke-static {v13, v10, v8}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget-wide v10, v8, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v8, :cond_6

    invoke-static {v10, v13}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x4

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_d
    move-object/from16 v13, p2

    move/from16 v10, p3

    if-ne v2, v11, :cond_6

    invoke-static {v10, v13}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v10, 0x8

    invoke-virtual {v5, v1, v6, v7, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_6
    :goto_3
    return v10

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˋᵔ(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    return-void
.end method

.method public final ˏי(IILjava/lang/Object;)Z
    .locals 2

    .prologue
    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p2, v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˑٴ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    return-void
.end method

.method public final ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)I
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    move v2, v7

    move v4, v2

    move v9, v4

    move v3, v8

    :goto_0
    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    array-length v10, v5

    if-ge v2, v10, :cond_1c

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v11

    aget v12, v5, v2

    add-int/lit8 v13, v2, 0x2

    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    and-int/2addr v10, v8

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ﹳᐧ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ﹳᐧ;

    iget v10, v10, Lcom/google/crypto/tink/shaded/protobuf/ﹳᐧ;->ʾˋ:I

    if-lt v11, v10, :cond_3

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ﹳᐧ;->ʽʽ:Lcom/google/crypto/tink/shaded/protobuf/ﹳᐧ;

    iget v10, v10, Lcom/google/crypto/tink/shaded/protobuf/ﹳᐧ;->ʾˋ:I

    :cond_3
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_20

    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v5, v10}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v11

    :goto_4
    add-int/2addr v9, v5

    goto/16 :goto_20

    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʽʽ(J)I

    move-result v10

    :goto_5
    add-int/2addr v10, v5

    :goto_6
    add-int/2addr v9, v10

    goto/16 :goto_20

    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵˊ(I)I

    move-result v5

    :goto_7
    add-int/2addr v5, v10

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    :goto_8
    add-int/lit8 v5, v5, 0x8

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    :goto_9
    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v5

    goto :goto_7

    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v5

    goto :goto_7

    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʾˋ(ILcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)I

    move-result v5

    goto :goto_4

    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v10

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    invoke-virtual {v5, v10}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I

    move-result v5

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v10

    :goto_a
    add-int/2addr v10, v5

    add-int/2addr v10, v11

    goto/16 :goto_6

    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    if-eqz v10, :cond_4

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʾˋ(ILcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)I

    move-result v5

    :goto_b
    add-int/2addr v5, v9

    move v9, v5

    goto/16 :goto_20

    :cond_4
    check-cast v5, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈٴ(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v10

    goto :goto_b

    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    goto/16 :goto_9

    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v5

    goto/16 :goto_7

    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v10

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v10

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    goto/16 :goto_9

    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    if-nez v10, :cond_7

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_20

    :cond_5
    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_20

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v10

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_8

    move v14, v7

    goto :goto_d

    :cond_8
    move v13, v7

    move v14, v13

    :goto_c
    if-ge v13, v11, :cond_9

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    invoke-virtual {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I

    move-result v15

    add-int v15, v15, v16

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_9
    :goto_d
    add-int/2addr v9, v14

    goto/16 :goto_20

    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵎﹶ(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    :goto_e
    add-int/2addr v11, v10

    add-int/2addr v11, v5

    add-int/2addr v9, v11

    goto/16 :goto_20

    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞᴵ(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto :goto_e

    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto :goto_e

    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto :goto_e

    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto :goto_e

    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵔᵢ(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto :goto_e

    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˈ(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʼˎ(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˑﹳ(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v11

    goto/16 :goto_e

    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    :goto_f
    move v11, v7

    goto :goto_11

    :cond_a
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵎﹶ(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    :goto_10
    mul-int/2addr v11, v10

    add-int/2addr v11, v5

    :cond_b
    :goto_11
    add-int/2addr v9, v11

    goto/16 :goto_20

    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_c

    goto :goto_f

    :cond_c
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞᴵ(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    goto :goto_10

    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽ(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ⁱˊ(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_d

    goto :goto_f

    :cond_d
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    goto :goto_10

    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    goto :goto_f

    :cond_e
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵔᵢ(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    goto :goto_10

    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_f

    goto :goto_f

    :cond_f
    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    mul-int/2addr v11, v10

    move v10, v7

    :goto_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_b

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v12}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v12

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v10

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_10

    move v12, v7

    goto :goto_14

    :cond_10
    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v12

    mul-int/2addr v12, v11

    move v13, v7

    :goto_13
    if-ge v13, v11, :cond_11

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v14, v10}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I

    move-result v14

    invoke-static {v14}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v15

    add-int/2addr v15, v14

    add-int/2addr v12, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_11
    :goto_14
    add-int/2addr v9, v12

    goto/16 :goto_20

    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_f

    :cond_12
    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    mul-int/2addr v11, v10

    move v12, v7

    :goto_15
    if-ge v12, v10, :cond_b

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    if-eqz v14, :cond_13

    check-cast v13, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v13

    invoke-static {v13}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v14, v11

    move v11, v14

    goto :goto_16

    :cond_13
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈٴ(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v11

    move v11, v13

    :goto_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_14

    move v10, v7

    goto :goto_17

    :cond_14
    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v10

    add-int/2addr v10, v15

    mul-int/2addr v10, v5

    :goto_17
    add-int/2addr v9, v10

    goto/16 :goto_20

    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ⁱˊ(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽ(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_f

    :cond_15
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˈ(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    goto/16 :goto_10

    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_f

    :cond_16
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʼˎ(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    goto/16 :goto_10

    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_f

    :cond_17
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˑﹳ(Ljava/util/List;)I

    move-result v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    goto/16 :goto_11

    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ⁱˊ(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽ(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v5, v10}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʽʽ(J)I

    move-result v5

    :goto_18
    add-int/2addr v5, v0

    add-int/2addr v9, v5

    :cond_18
    :goto_19
    move-object/from16 v0, p0

    goto/16 :goto_20

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵˊ(I)I

    move-result v0

    :goto_1a
    add-int/2addr v0, v5

    :goto_1b
    add-int/2addr v9, v0

    goto :goto_19

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    :goto_1c
    add-int/lit8 v0, v0, 0x8

    :goto_1d
    add-int/2addr v9, v0

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_20

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    :goto_1e
    add-int/lit8 v0, v0, 0x4

    goto :goto_1d

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    int-to-long v10, v0

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    goto :goto_1a

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v0

    goto :goto_1a

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {v12, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʾˋ(ILcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)I

    move-result v0

    goto :goto_1b

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v10

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v11

    invoke-virtual {v5, v10}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ⁱˊ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)I

    move-result v5

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v10

    goto/16 :goto_a

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    if-eqz v5, :cond_1a

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {v12, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʾˋ(ILcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)I

    move-result v0

    :goto_1f
    add-int/2addr v0, v9

    move v9, v0

    goto/16 :goto_19

    :cond_1a
    check-cast v0, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˈٴ(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_1f

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    add-int/2addr v0, v15

    goto/16 :goto_1d

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    int-to-long v10, v0

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v0

    goto/16 :goto_1a

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v5

    goto/16 :goto_18

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    invoke-static {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴᵢ(J)I

    move-result v5

    goto/16 :goto_18

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᴵᵔ(I)I

    move-result v5

    goto/16 :goto_8

    :cond_1b
    :goto_20
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_1c
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ⁱˊ()I

    move-result v1

    add-int/2addr v1, v9

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ـˆ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget v1, v0, p2

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object p3

    invoke-virtual {p0, v1, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-interface {p3, p2, v5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source subfield "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p2, v0, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ـˏ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V
    .locals 24

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    iget-object v8, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    array-length v9, v8

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    const v11, 0xfffff

    move v0, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v9, :cond_f

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v5

    aget v13, v8, v3

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v6

    const/16 v14, 0x11

    if-gt v6, v14, :cond_2

    add-int/lit8 v14, v3, 0x2

    aget v14, v8, v14

    const/16 v16, 0x1

    and-int v15, v14, v11

    if-eq v15, v0, :cond_1

    if-ne v15, v11, :cond_0

    move/from16 v17, v11

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    move/from16 v17, v11

    int-to-long v11, v15

    invoke-virtual {v10, v2, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v4, v0

    :goto_1
    move v0, v15

    goto :goto_2

    :cond_1
    move/from16 v17, v11

    :goto_2
    ushr-int/lit8 v11, v14, 0x14

    shl-int v11, v16, v11

    move/from16 v23, v4

    move v4, v0

    move v0, v5

    move/from16 v5, v23

    move/from16 v23, v11

    move v11, v6

    move/from16 v6, v23

    goto :goto_3

    :cond_2
    move/from16 v17, v11

    const/16 v16, 0x1

    move v11, v4

    move v4, v0

    move v0, v5

    move v5, v11

    move v11, v6

    const/4 v6, 0x0

    :goto_3
    and-int v0, v0, v17

    int-to-long v14, v0

    const/16 v0, 0x3f

    const-string v12, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object/from16 v18, v8

    const/4 v8, 0x2

    packed-switch v11, :pswitch_data_0

    :cond_3
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_15

    :pswitch_0
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v6

    invoke-virtual {v7, v13, v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v11

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    shl-long v14, v11, v16

    shr-long/2addr v11, v0

    xor-long/2addr v11, v14

    invoke-virtual {v6, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    shl-int/lit8 v8, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v8

    invoke-virtual {v6, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v11

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v0, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iget-object v8, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v11

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {v6, v8, v11, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v6

    invoke-virtual {v7, v13, v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ⁱˊ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_5

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v11, v13, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    iget v0, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    iget-object v8, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iget v13, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3

    invoke-static {v14}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v15}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v15

    if-ne v15, v14, :cond_4

    add-int v14, v13, v15

    iput v14, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/ˊᵔ; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v14

    move/from16 v19, v4

    :try_start_1
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v4, v6, v8, v14, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﾞᴵ(Ljava/lang/String;[BII)I

    move-result v0

    iput v13, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int v4, v0, v13

    sub-int/2addr v4, v15

    invoke-virtual {v11, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    iput v0, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v19, v4

    goto :goto_6

    :cond_4
    move/from16 v19, v4

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ⁱˊ(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    iget v4, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int/2addr v0, v4

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v14, v6, v8, v4, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﾞᴵ(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/ˊᵔ; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_5
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v2

    :goto_6
    iput v13, v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v8, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_2
    array-length v4, v0

    invoke-virtual {v11, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    array-length v4, v0

    const/4 v6, 0x0

    invoke-virtual {v11, v0, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v2

    :cond_5
    move/from16 v19, v4

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    iget-object v4, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v4, v13, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {v4, v6, v8, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V

    :cond_6
    :goto_7
    move/from16 v4, v19

    goto/16 :goto_4

    :pswitch_a
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    int-to-byte v0, v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉٴ(B)V

    goto :goto_7

    :pswitch_b
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v0

    iget-object v4, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v4, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    goto :goto_7

    :pswitch_c
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v11

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v0, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    goto :goto_7

    :pswitch_d
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵˊ(JLjava/lang/Object;)I

    move-result v0

    iget-object v4, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v4, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    goto :goto_7

    :pswitch_e
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v11

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v0, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    goto :goto_7

    :pswitch_f
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽʽ(JLjava/lang/Object;)J

    move-result-wide v11

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v0, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    goto/16 :goto_7

    :pswitch_10
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v4, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v4, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    goto/16 :goto_7

    :pswitch_11
    move/from16 v19, v4

    invoke-virtual {v1, v13, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    invoke-virtual {v0, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    goto/16 :goto_7

    :pswitch_12
    move/from16 v19, v4

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    move/from16 v19, v4

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v6

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v0, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :pswitch_14
    move/from16 v19, v4

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move/from16 v6, v16

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʾᵎ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_15
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ـˆ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_16
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʻٴ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_17
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽﹳ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_18
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˉˆ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_19
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʼʼ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_1a
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˉʿ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_1b
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʼᐧ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_1c
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵔﹳ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_1d
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->יـ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_1e
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵢˏ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_1f
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˏי(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_20
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳᐧ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_21
    move/from16 v19, v4

    move/from16 v6, v16

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵔʾ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto/16 :goto_7

    :pswitch_22
    move/from16 v19, v4

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʾᵎ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    :goto_9
    move v8, v6

    move/from16 v4, v19

    goto/16 :goto_15

    :pswitch_23
    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ـˆ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_9

    :pswitch_24
    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʻٴ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_9

    :pswitch_25
    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʽﹳ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_9

    :pswitch_26
    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˉˆ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_9

    :pswitch_27
    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v4, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʼʼ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_9

    :pswitch_28
    move/from16 v19, v4

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_6

    iget-object v11, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v11, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v11, v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {v12}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    check-cast v12, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iget-object v13, v12, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {v12}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v14

    invoke-virtual {v12}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v12

    invoke-virtual {v11, v13, v14, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :pswitch_29
    move/from16 v19, v4

    aget v0, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v6

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    :goto_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v0, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ⁱˊ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :pswitch_2a
    move/from16 v19, v4

    aget v4, v18, v3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    :goto_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_9

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v4, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    iget v0, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    iget-object v15, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iget v8, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    mul-int/lit8 v20, v20, 0x3

    move/from16 v21, v0

    invoke-static/range {v20 .. v20}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    add-int v0, v8, v1

    iput v0, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/ˊᵔ; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v20, v1

    sub-int v1, v21, v0

    move/from16 v22, v3

    :try_start_4
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v3, v14, v15, v0, v1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﾞᴵ(Ljava/lang/String;[BII)I

    move-result v0

    iput v8, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int v1, v0, v8

    sub-int v1, v1, v20

    invoke-virtual {v13, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    iput v0, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    move/from16 v22, v3

    goto :goto_e

    :cond_8
    move/from16 v22, v3

    invoke-static {v14}, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ⁱˊ(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    iget v0, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int v1, v21, v0

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v3, v14, v15, v0, v1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﾞᴵ(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/ˊᵔ; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_f

    :goto_d
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :goto_e
    iput v8, v13, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_5
    array-length v1, v0

    invoke-virtual {v13, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    array-length v1, v0

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7

    :goto_f
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x2

    move-object/from16 v1, p0

    move/from16 v3, v22

    goto/16 :goto_c

    :catch_7
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :cond_9
    move/from16 v22, v3

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v4, v19

    move/from16 v3, v22

    goto/16 :goto_15

    :pswitch_2b
    move/from16 v22, v3

    move/from16 v19, v4

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˉʿ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    :goto_10
    move-object/from16 v1, p0

    move v8, v6

    goto/16 :goto_15

    :pswitch_2c
    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ʼᐧ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_10

    :pswitch_2d
    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵔﹳ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_10

    :pswitch_2e
    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->יـ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_10

    :pswitch_2f
    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵢˏ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_10

    :pswitch_30
    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˏי(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_10

    :pswitch_31
    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳᐧ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_10

    :pswitch_32
    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v6, 0x0

    aget v0, v18, v22

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ᵔʾ(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;Z)V

    goto :goto_10

    :pswitch_33
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v6

    invoke-virtual {v7, v13, v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V

    goto/16 :goto_4

    :pswitch_34
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    const/16 v16, 0x1

    shl-long v14, v11, v16

    shr-long/2addr v11, v0

    xor-long/2addr v11, v14

    invoke-virtual {v1, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    :cond_a
    :goto_11
    const/4 v8, 0x0

    :cond_b
    :goto_12
    move-object/from16 v1, p0

    goto/16 :goto_15

    :pswitch_35
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    shl-int/lit8 v6, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v6

    invoke-virtual {v1, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    goto :goto_11

    :pswitch_36
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    goto :goto_11

    :pswitch_37
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v1, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    goto :goto_11

    :pswitch_38
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v1, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    goto :goto_11

    :pswitch_39
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v1, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˋᵔ(II)V

    goto :goto_11

    :pswitch_3a
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    const/4 v6, 0x2

    invoke-virtual {v1, v13, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {v1, v6, v8, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V

    goto/16 :goto_11

    :pswitch_3b
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v6

    invoke-virtual {v7, v13, v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ⁱˊ(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;)V

    goto/16 :goto_4

    :pswitch_3c
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    const/4 v8, 0x2

    invoke-virtual {v6, v13, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    iget v0, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ﾞʻ:I

    iget-object v8, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴﹶ:[B

    iget v11, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3

    invoke-static {v13}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v14}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊʻ(I)I

    move-result v14

    if-ne v14, v13, :cond_c

    add-int v13, v11, v14

    iput v13, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int/2addr v0, v13

    sget-object v15, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v15, v1, v8, v13, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﾞᴵ(Ljava/lang/String;[BII)I

    move-result v0

    iput v11, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int v8, v0, v11

    sub-int/2addr v8, v14

    invoke-virtual {v6, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    iput v0, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    goto/16 :goto_11

    :catch_8
    move-exception v0

    goto :goto_13

    :catch_9
    move-exception v0

    goto :goto_14

    :cond_c
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ⁱˊ(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    iget v13, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sub-int/2addr v0, v13

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v14, v1, v8, v13, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ﾞᴵ(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I
    :try_end_6
    .catch Lcom/google/crypto/tink/shaded/protobuf/ˊᵔ; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_11

    :goto_13
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :goto_14
    iput v11, v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉʿ:I

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔʾ:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v8, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_7
    array-length v1, v0

    invoke-virtual {v6, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    array-length v1, v0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_11

    :catch_a
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    :cond_d
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    const/4 v6, 0x2

    invoke-virtual {v1, v13, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˊˋ(I)V

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {v1, v6, v8, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵎⁱ([BII)V

    goto/16 :goto_11

    :pswitch_3d
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʽ(JLjava/lang/Object;)Z

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    const/4 v8, 0x0

    invoke-virtual {v1, v13, v8}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˑٴ(II)V

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ˉٴ(B)V

    goto/16 :goto_12

    :pswitch_3e
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v1, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    goto/16 :goto_12

    :pswitch_3f
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    goto/16 :goto_12

    :pswitch_40
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v1, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔٴ(II)V

    goto/16 :goto_12

    :pswitch_41
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    goto/16 :goto_12

    :pswitch_42
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10, v2, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    iget-object v6, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v6, v13, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ʼˈ(IJ)V

    goto/16 :goto_12

    :pswitch_43
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ﾞᴵ(JLjava/lang/Object;)F

    move-result v0

    iget-object v1, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v1, v13, v0}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ٴʼ(II)V

    goto/16 :goto_12

    :pswitch_44
    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳᐧ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, v14, v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˑﹳ(JLjava/lang/Object;)D

    move-result-wide v11

    iget-object v0, v7, Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    invoke-virtual {v0, v13, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ﾞʻ;->ᵔי(IJ)V

    :cond_e
    :goto_15
    add-int/lit8 v3, v3, 0x3

    move v0, v4

    move v4, v5

    move/from16 v11, v17

    move-object/from16 v8, v18

    goto/16 :goto_0

    :cond_f
    iget-object v0, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {v0, v7}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ٴᵢ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ٴʼ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    const/4 v1, 0x2

    const v2, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p1, v2

    int-to-long v2, p1

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object p1, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵˊ()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞᴵ:Z

    if-eqz v0, :cond_1

    and-int/2addr p1, v2

    int-to-long v2, p1

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object p1, p2, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾˋ()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p1, v2

    int-to-long v0, p1

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object p1

    invoke-static {v0, v1, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ٴᵢ(Ljava/lang/Object;[BIIIIIJIJLcom/google/android/gms/internal/measurement/ˈʻ;)I
    .locals 14

    .prologue
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v6, p7

    move-wide/from16 v2, p11

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-object v7, v5

    check-cast v7, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;

    iget-boolean v7, v7, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;->ʾˋ:Z

    const/4 v8, 0x2

    if-nez v7, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0xa

    goto :goto_0

    :cond_0
    mul-int/2addr v7, v8

    :goto_0
    invoke-interface {v5, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;->ˉˆ(I)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    move-object v4, v5

    const/4 p1, 0x5

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    packed-switch p10, :pswitch_data_0

    :cond_2
    move/from16 v2, p3

    goto/16 :goto_2a

    :pswitch_0
    const/4 p1, 0x3

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object p1

    and-int/lit8 v1, v0, -0x8

    or-int/lit8 v1, v1, 0x4

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 p7, p1

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p12, p13

    move/from16 p11, v1

    move-object/from16 p6, v2

    invoke-static/range {p6 .. p12}, Lﹳٴ/ﹳٴ;->ˈٴ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;[BIIILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    move-object/from16 v7, p6

    move-object/from16 v2, p7

    move-object/from16 v1, p8

    move/from16 v3, p10

    move/from16 v6, p11

    move-object/from16 v5, p12

    invoke-interface {v2, v7}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V

    iput-object v7, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge p1, v3, :cond_4

    invoke-static {v1, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v7

    iget v8, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v0, v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 p6, p1

    move-object/from16 p8, v1

    move-object/from16 p7, v2

    move/from16 p10, v3

    move-object/from16 p12, v5

    move/from16 p11, v6

    move/from16 p9, v7

    invoke-static/range {p6 .. p12}, Lﹳٴ/ﹳٴ;->ˈٴ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;[BIIILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    move-object/from16 v7, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-interface {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V

    iput-object v7, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_1

    :cond_4
    :goto_2
    return p1

    :pswitch_1
    move-object/from16 v2, p2

    move/from16 p1, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v1, v8, :cond_7

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v0, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v0, p1

    :goto_3
    if-ge p1, v0, :cond_5

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget-wide v6, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˑﹳ(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    goto :goto_3

    :cond_5
    if-ne p1, v0, :cond_6

    return p1

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_7
    if-nez v1, :cond_a

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget-wide v6, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˑﹳ(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    :goto_4
    if-ge p1, v3, :cond_9

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget v6, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v0, v6, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {v2, v1, v5}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget-wide v6, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˑﹳ(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    goto :goto_4

    :cond_9
    :goto_5
    return p1

    :cond_a
    move v2, p1

    goto/16 :goto_2a

    :pswitch_2
    move-object/from16 v2, p2

    move/from16 p1, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v1, v8, :cond_d

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v0, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v0, p1

    :goto_6
    if-ge p1, v0, :cond_b

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v1, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈ(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    goto :goto_6

    :cond_b
    if-ne p1, v0, :cond_c

    return p1

    :cond_c
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_d
    if-nez v1, :cond_a

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v1, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈ(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    :goto_7
    if-ge p1, v3, :cond_f

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget v6, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v0, v6, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {v2, v1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v1, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈ(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    goto :goto_7

    :cond_f
    :goto_8
    return p1

    :pswitch_3
    move-object/from16 v2, p2

    move/from16 p1, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v1, v8, :cond_12

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v0, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_10

    invoke-static {v2, p1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v1, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    goto :goto_9

    :cond_10
    if-ne p1, v0, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_12
    if-nez v1, :cond_a

    move-object v1, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lﹳٴ/ﹳٴ;->ᵔʾ(I[BIILcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Lcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    :goto_a
    invoke-virtual {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    return p1

    :pswitch_4
    move-object/from16 p1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v1, v8, :cond_4f

    invoke-static {p1, v2, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget v2, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v2, :cond_1a

    array-length v6, p1

    sub-int/2addr v6, v1

    if-gt v2, v6, :cond_19

    if-nez v2, :cond_13

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr v1, v2

    :goto_c
    if-ge v1, v3, :cond_18

    invoke-static {p1, v1, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v6, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v0, v6, :cond_14

    goto :goto_d

    :cond_14
    invoke-static {p1, v2, v5}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget v2, v5, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v2, :cond_17

    array-length v6, p1

    sub-int/2addr v6, v1

    if-gt v2, v6, :cond_16

    if-nez v2, :cond_15

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_17
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_18
    :goto_d
    return v1

    :cond_19
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :pswitch_5
    move-object/from16 p1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p13

    if-ne v1, v8, :cond_4f

    invoke-virtual {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v1

    move-object/from16 p8, p1

    move/from16 p7, v0

    move-object/from16 p6, v1

    move/from16 p9, v2

    move/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    invoke-static/range {p6 .. p12}, Lﹳٴ/ﹳٴ;->ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;I[BIILcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Lcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    return p1

    :pswitch_6
    move/from16 v6, p4

    move-object/from16 v9, p13

    move v7, v0

    move-object v10, v4

    move-object/from16 v4, p2

    move/from16 v0, p3

    if-ne v1, v8, :cond_2a

    const-wide/32 v11, 0x20000000

    and-long v11, p8, v11

    cmp-long p1, v11, v2

    const-string v1, ""

    if-nez p1, :cond_21

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v0, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v0, :cond_20

    if-nez v0, :cond_1b

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, p1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/2addr p1, v0

    :goto_f
    if-ge p1, v6, :cond_1f

    invoke-static {v4, p1, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v7, v2, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v0, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v0, :cond_1e

    if-nez v0, :cond_1d

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, p1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1f
    :goto_10
    return p1

    :cond_20
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_21
    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v0, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v0, :cond_29

    if-nez v0, :cond_22

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_22
    add-int v2, p1, v0

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵔי([BII)I

    move-result v3

    if-nez v3, :cond_28

    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    move p1, v2

    :goto_12
    if-ge p1, v6, :cond_27

    invoke-static {v4, p1, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v7, v2, :cond_23

    goto :goto_13

    :cond_23
    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    iget v0, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v0, :cond_26

    if-nez v0, :cond_24

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_24
    add-int v2, p1, v0

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵔי([BII)I

    move-result v3

    if-nez v3, :cond_25

    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_26
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_27
    :goto_13
    return p1

    :cond_28
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_29
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2a
    move v2, v0

    goto/16 :goto_2a

    :pswitch_7
    move/from16 v6, p4

    move-object/from16 v9, p13

    move v7, v0

    move-object v10, v4

    move-object/from16 v4, p2

    move/from16 v0, p3

    const/4 p1, 0x0

    if-ne v1, v8, :cond_2e

    move-object v1, v10

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ˈ;

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v6, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v6, v0

    :goto_14
    if-ge v0, v6, :cond_2c

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget-wide v7, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_2b

    move v7, v5

    goto :goto_15

    :cond_2b
    move v7, p1

    :goto_15
    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ˈ;->ⁱˊ(Z)V

    goto :goto_14

    :cond_2c
    if-ne v0, v6, :cond_2d

    return v0

    :cond_2d
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_2e
    if-nez v1, :cond_2a

    move-object v1, v10

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ˈ;

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget-wide v10, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    cmp-long v8, v10, v2

    if-eqz v8, :cond_2f

    move v8, v5

    goto :goto_16

    :cond_2f
    move v8, p1

    :goto_16
    invoke-virtual {v1, v8}, Lcom/google/crypto/tink/shaded/protobuf/ˈ;->ⁱˊ(Z)V

    :goto_17
    if-ge v0, v6, :cond_32

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v8

    iget v10, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v7, v10, :cond_30

    goto :goto_19

    :cond_30
    invoke-static {v4, v8, v9}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget-wide v10, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    cmp-long v8, v10, v2

    if-eqz v8, :cond_31

    move v8, v5

    goto :goto_18

    :cond_31
    move v8, p1

    :goto_18
    invoke-virtual {v1, v8}, Lcom/google/crypto/tink/shaded/protobuf/ˈ;->ⁱˊ(Z)V

    goto :goto_17

    :cond_32
    :goto_19
    return v0

    :pswitch_8
    move/from16 v6, p4

    move-object/from16 v9, p13

    move v7, v0

    move-object v10, v4

    move-object/from16 v4, p2

    move/from16 v0, p3

    if-ne v1, v8, :cond_35

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v1, v0

    :goto_1a
    if-ge v0, v1, :cond_33

    invoke-static {v0, v4}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_1a

    :cond_33
    if-ne v0, v1, :cond_34

    return v0

    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_35
    if-ne v1, p1, :cond_2a

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    invoke-static {v0, v4}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    add-int/lit8 v0, v0, 0x4

    :goto_1b
    if-ge v0, v6, :cond_37

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v7, v2, :cond_36

    goto :goto_1c

    :cond_36
    invoke-static {v1, v4}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_1b

    :cond_37
    :goto_1c
    return v0

    :pswitch_9
    move/from16 v6, p4

    move-object/from16 v9, p13

    move v7, v0

    move-object v10, v4

    move-object/from16 v4, p2

    move/from16 v0, p3

    if-ne v1, v8, :cond_3a

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v1, v0

    :goto_1d
    if-ge v0, v1, :cond_38

    invoke-static {v0, v4}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1d

    :cond_38
    if-ne v0, v1, :cond_39

    return v0

    :cond_39
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3a
    if-ne v1, v5, :cond_2a

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    invoke-static {v0, v4}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    add-int/lit8 v0, v0, 0x8

    :goto_1e
    if-ge v0, v6, :cond_3c

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v7, v2, :cond_3b

    goto :goto_1f

    :cond_3b
    invoke-static {v1, v4}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_1e

    :cond_3c
    :goto_1f
    return v0

    :pswitch_a
    move/from16 v6, p4

    move-object/from16 v9, p13

    move v7, v0

    move-object v10, v4

    move-object/from16 v4, p2

    move/from16 v0, p3

    if-ne v1, v8, :cond_3f

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v1, v0

    :goto_20
    if-ge v0, v1, :cond_3d

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    goto :goto_20

    :cond_3d
    if-ne v0, v1, :cond_3e

    return v0

    :cond_3e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3f
    if-nez v1, :cond_2a

    move/from16 p8, v0

    move-object/from16 p7, v4

    move/from16 p9, v6

    move/from16 p6, v7

    move-object/from16 p11, v9

    move-object/from16 p10, v10

    invoke-static/range {p6 .. p11}, Lﹳٴ/ﹳٴ;->ᵔʾ(I[BIILcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Lcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result p1

    return p1

    :pswitch_b
    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v9, p13

    move-object v10, v4

    move-object/from16 v4, p2

    if-ne v1, v8, :cond_42

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    invoke-static {v4, v2, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v1, v0

    :goto_21
    if-ge v0, v1, :cond_40

    invoke-static {v4, v0, v9}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget-wide v2, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-virtual {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    goto :goto_21

    :cond_40
    if-ne v0, v1, :cond_41

    return v0

    :cond_41
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_42
    if-nez v1, :cond_4f

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    invoke-static {v4, v2, v9}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget-wide v5, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-virtual {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    :goto_22
    if-ge v1, v3, :cond_44

    invoke-static {v4, v1, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v5, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v0, v5, :cond_43

    goto :goto_23

    :cond_43
    invoke-static {v4, v2, v9}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    iget-wide v5, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-virtual {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    goto :goto_22

    :cond_44
    :goto_23
    return v1

    :pswitch_c
    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v9, p13

    move-object v10, v4

    move-object/from16 v4, p2

    if-ne v1, v8, :cond_47

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/יـ;

    invoke-static {v4, v2, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v1, v0

    :goto_24
    if-ge v0, v1, :cond_45

    invoke-static {v0, v4}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/יـ;->ⁱˊ(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_24

    :cond_45
    if-ne v0, v1, :cond_46

    return v0

    :cond_46
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_47
    if-ne v1, p1, :cond_4f

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/יـ;

    invoke-static {v2, v4}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/יـ;->ⁱˊ(F)V

    :goto_25
    add-int/lit8 v1, v2, 0x4

    if-ge v1, v3, :cond_49

    invoke-static {v4, v1, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v5, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v0, v5, :cond_48

    goto :goto_26

    :cond_48
    invoke-static {v2, v4}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/יـ;->ⁱˊ(F)V

    goto :goto_25

    :cond_49
    :goto_26
    return v1

    :pswitch_d
    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v9, p13

    move-object v10, v4

    move-object/from16 v4, p2

    if-ne v1, v8, :cond_4c

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;

    invoke-static {v4, v2, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    add-int/2addr v1, v0

    :goto_27
    if-ge v0, v1, :cond_4a

    invoke-static {v0, v4}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;->ⁱˊ(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_27

    :cond_4a
    if-ne v0, v1, :cond_4b

    return v0

    :cond_4b
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4c
    if-ne v1, v5, :cond_4f

    move-object p1, v10

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;

    invoke-static {v2, v4}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;->ⁱˊ(D)V

    :goto_28
    add-int/lit8 v1, v2, 0x8

    if-ge v1, v3, :cond_4e

    invoke-static {v4, v1, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v5, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-eq v0, v5, :cond_4d

    goto :goto_29

    :cond_4d
    invoke-static {v2, v4}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;->ⁱˊ(D)V

    goto :goto_28

    :cond_4e
    :goto_29
    return v1

    :cond_4f
    :goto_2a
    return v2

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ᴵᵔ(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/ˈʻ;)I
    .locals 29

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v14, p5

    move-object/from16 v13, p6

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    move/from16 v5, p3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    if-ge v5, v4, :cond_22

    add-int/lit8 v12, v5, 0x1

    aget-byte v5, v3, v5

    if-gez v5, :cond_0

    invoke-static {v5, v3, v12, v13}, Lﹳٴ/ﹳٴ;->ﾞʻ(I[BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v12

    iget v5, v13, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    :cond_0
    move/from16 v26, v12

    move v12, v5

    move/from16 v5, v26

    const/16 p3, 0x0

    ushr-int/lit8 v15, v12, 0x3

    and-int/lit8 v11, v12, 0x7

    iget v10, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˈ:I

    iget v3, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽ:I

    const/4 v4, 0x3

    if-le v15, v6, :cond_2

    div-int/2addr v7, v4

    if-lt v15, v3, :cond_1

    if-gt v15, v10, :cond_1

    invoke-virtual {v0, v15, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˈʿ(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    const/4 v10, 0x0

    :goto_3
    const/4 v6, -0x1

    goto :goto_4

    :cond_2
    if-lt v15, v3, :cond_3

    if-gt v15, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v0, v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˈʿ(II)I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    const/4 v3, -0x1

    goto :goto_3

    :goto_4
    if-ne v3, v6, :cond_4

    move/from16 v20, v6

    move v7, v10

    move/from16 v19, v7

    move/from16 v18, v15

    move-object v6, v0

    move-object v15, v1

    move-object v10, v2

    move v2, v12

    goto/16 :goto_18

    :cond_4
    add-int/lit8 v7, v3, 0x1

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget v7, v6, v7

    move/from16 v18, v10

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v10

    and-int v4, v7, v16

    move/from16 v20, v5

    int-to-long v4, v4

    move-wide/from16 v21, v4

    const/16 v4, 0x11

    if-gt v10, v4, :cond_16

    add-int/lit8 v4, v3, 0x2

    aget v4, v6, v4

    ushr-int/lit8 v6, v4, 0x14

    const/4 v5, 0x1

    shl-int v23, v5, v6

    and-int v4, v4, v16

    if-eq v4, v8, :cond_7

    move/from16 v6, v16

    if-eq v8, v6, :cond_5

    int-to-long v5, v8

    invoke-virtual {v1, v2, v5, v6, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v6, 0xfffff

    :cond_5
    if-ne v4, v6, :cond_6

    move/from16 v9, v18

    goto :goto_5

    :cond_6
    int-to-long v5, v4

    invoke-virtual {v1, v2, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v9, v5

    :goto_5
    move/from16 v24, v4

    :goto_6
    move/from16 v25, v9

    goto :goto_7

    :cond_7
    move/from16 v24, v8

    goto :goto_6

    :goto_7
    const/4 v4, 0x5

    packed-switch v10, :pswitch_data_0

    move-object/from16 v9, p2

    move-object v10, v1

    move-object v1, v2

    move-object v7, v13

    move/from16 v8, v20

    const/16 v17, -0x1

    move v13, v3

    goto/16 :goto_14

    :pswitch_0
    const/4 v4, 0x3

    if-ne v11, v4, :cond_8

    invoke-virtual {v0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾᵎ(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v15, 0x3

    or-int/lit8 v8, v5, 0x4

    move-object v5, v4

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v4

    move/from16 v7, p4

    move-object v9, v13

    move/from16 v6, v20

    const/16 v17, -0x1

    move v13, v3

    move-object v3, v5

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v9}, Lﹳٴ/ﹳٴ;->ˈٴ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;[BIIILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v4

    move-object v7, v5

    invoke-virtual {v0, v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˑٴ(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v3, v25, v23

    move-object v5, v9

    move v9, v3

    move-object v3, v7

    move v7, v13

    move-object v13, v5

    move v5, v4

    move v6, v15

    move/from16 v8, v24

    const v16, 0xfffff

    move/from16 v4, p4

    goto/16 :goto_1

    :cond_8
    move-object v9, v13

    const/16 v17, -0x1

    move v13, v3

    move-object v10, v1

    move-object v1, v2

    move-object v7, v9

    move/from16 v8, v20

    move-object/from16 v9, p2

    goto/16 :goto_14

    :pswitch_1
    move-object/from16 v7, p2

    move-object v9, v13

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-nez v11, :cond_9

    invoke-static {v7, v3, v9}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v8

    iget-wide v3, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˑﹳ(J)J

    move-result-wide v5

    move-wide/from16 v3, v21

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v10, v2

    or-int v2, v25, v23

    move/from16 v4, p4

    move-object v3, v7

    move v5, v8

    move v7, v13

    move v6, v15

    move/from16 v8, v24

    const v16, 0xfffff

    move-object v13, v9

    move v9, v2

    :goto_8
    move-object v2, v10

    goto/16 :goto_1

    :cond_9
    move-object v8, v9

    move-object v9, v7

    move-object v7, v8

    move-object v10, v1

    move-object v1, v2

    :goto_9
    move v8, v3

    goto/16 :goto_14

    :pswitch_2
    move-object/from16 v7, p2

    move-object v10, v2

    move-object v9, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-nez v11, :cond_a

    invoke-static {v7, v3, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈ(I)I

    move-result v3

    invoke-virtual {v1, v10, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    or-int v3, v25, v23

    move-object v4, v9

    move v9, v3

    move-object v3, v7

    move v7, v13

    move-object v13, v4

    move/from16 v4, p4

    move v5, v2

    move-object v2, v10

    :goto_b
    move v6, v15

    move/from16 v8, v24

    goto/16 :goto_0

    :cond_a
    move-object v8, v10

    move-object v10, v1

    move-object v1, v8

    move-object v8, v9

    move-object v9, v7

    move-object v7, v8

    goto :goto_9

    :pswitch_3
    move-object/from16 v7, p2

    move-object v10, v2

    move-object v9, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-nez v11, :cond_a

    invoke-static {v7, v3, v9}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-virtual {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    invoke-virtual {v1, v10, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_4
    move-object/from16 v7, p2

    move-object v10, v2

    move-object v9, v13

    move-wide/from16 v5, v21

    const/4 v2, 0x2

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-ne v11, v2, :cond_a

    invoke-static {v7, v3, v9}, Lﹳٴ/ﹳٴ;->ᵎﹶ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget-object v3, v9, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v1, v10, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    move-object/from16 v7, p2

    move-object v10, v2

    move-object v9, v13

    const/4 v2, 0x2

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-ne v11, v2, :cond_b

    move-object v2, v1

    invoke-virtual {v0, v13, v10}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾᵎ(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    invoke-virtual {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v2

    move/from16 v5, p4

    move-object v8, v4

    move-object v6, v9

    move v4, v3

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lﹳٴ/ﹳٴ;->ᴵᵔ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    move-object v9, v3

    move-object v3, v1

    move-object v1, v6

    invoke-virtual {v0, v10, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˑٴ(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_c
    or-int v3, v25, v23

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move/from16 v4, p4

    move v5, v2

    move-object v2, v10

    move v7, v13

    move v6, v15

    const v16, 0xfffff

    move-object v13, v1

    move-object v1, v8

    :goto_d
    move/from16 v8, v24

    goto/16 :goto_1

    :cond_b
    move-object v8, v1

    move-object v1, v9

    move-object v9, v7

    :cond_c
    move-object v7, v1

    move-object v1, v10

    move-object v10, v8

    goto/16 :goto_9

    :pswitch_6
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v10, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/4 v2, 0x2

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-ne v11, v2, :cond_c

    const/high16 v2, 0x20000000

    and-int/2addr v2, v7

    const-string v4, ""

    if-eqz v2, :cond_f

    invoke-static {v9, v3, v1}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v3, :cond_e

    if-nez v3, :cond_d

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    goto :goto_f

    :cond_d
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ـﹶ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˏʻ;

    invoke-virtual {v4, v9, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˑﹳ([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    :goto_e
    add-int/2addr v2, v3

    goto :goto_f

    :cond_e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_f
    invoke-static {v9, v3, v1}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    if-ltz v3, :cond_11

    if-nez v3, :cond_10

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    goto :goto_f

    :cond_10
    new-instance v4, Ljava/lang/String;

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v4, v9, v2, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    goto :goto_e

    :goto_f
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v8, v10, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :cond_11
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :pswitch_7
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v10, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-nez v11, :cond_c

    invoke-static {v9, v3, v1}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    const-wide/16 v19, 0x0

    cmp-long v3, v3, v19

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_10

    :cond_12
    move/from16 v3, v18

    :goto_10
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v10, v5, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ٴﹶ(Ljava/lang/Object;JZ)V

    goto/16 :goto_c

    :pswitch_8
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v10, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-ne v11, v4, :cond_c

    invoke-static {v3, v9}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v2

    invoke-virtual {v8, v10, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v5, v3, 0x4

    or-int v2, v25, v23

    move/from16 v4, p4

    move-object v3, v9

    move v7, v13

    move v6, v15

    const v16, 0xfffff

    move-object v13, v1

    move v9, v2

    move-object v1, v8

    move-object v2, v10

    goto/16 :goto_d

    :pswitch_9
    move-object/from16 v9, p2

    move-object v8, v1

    move-object v10, v2

    move-object v1, v13

    move-wide/from16 v5, v21

    const/4 v2, 0x1

    const/16 v17, -0x1

    move v13, v3

    move/from16 v3, v20

    if-ne v11, v2, :cond_13

    move-wide/from16 v21, v5

    invoke-static {v3, v9}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v5

    move-object v7, v1

    move-object v1, v8

    move-object v2, v10

    move v8, v3

    move-wide/from16 v3, v21

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v5, v8, 0x8

    :goto_11
    or-int v3, v25, v23

    move-object v4, v9

    move v9, v3

    move-object v3, v4

    move v4, v13

    move-object v13, v7

    move v7, v4

    move/from16 v4, p4

    goto/16 :goto_b

    :cond_13
    move-object v7, v1

    move-object v1, v8

    move v8, v3

    move-object/from16 v26, v10

    move-object v10, v1

    move-object/from16 v1, v26

    goto/16 :goto_14

    :pswitch_a
    move-object/from16 v9, p2

    move-object v7, v13

    move/from16 v8, v20

    const/16 v17, -0x1

    move v13, v3

    move-wide/from16 v3, v21

    if-nez v11, :cond_14

    invoke-static {v9, v8, v7}, Lﹳٴ/ﹳٴ;->ˉʿ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v5

    iget v6, v7, Lcom/google/android/gms/internal/measurement/ˈʻ;->ﹳٴ:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_11

    :cond_14
    move-object v10, v1

    :cond_15
    move-object v1, v2

    goto/16 :goto_14

    :pswitch_b
    move-object/from16 v9, p2

    move-object v7, v13

    move/from16 v8, v20

    const/16 v17, -0x1

    move v13, v3

    move-wide/from16 v3, v21

    if-nez v11, :cond_14

    invoke-static {v9, v8, v7}, Lﹳٴ/ﹳٴ;->ˉˆ([BILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v8

    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/ˈʻ;->ⁱˊ:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v10, v1

    or-int v1, v25, v23

    move v3, v13

    move-object v13, v7

    move v7, v3

    move/from16 v4, p4

    move v5, v8

    :goto_12
    move-object v3, v9

    move v6, v15

    move/from16 v8, v24

    const v16, 0xfffff

    move v9, v1

    :goto_13
    move-object v1, v10

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v9, p2

    move-object v10, v1

    move-object v7, v13

    move/from16 v8, v20

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    move v13, v3

    if-ne v11, v4, :cond_15

    invoke-static {v8, v9}, Lﹳٴ/ﹳٴ;->ᵔᵢ(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v3, v2, v5, v6, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔʾ(Ljava/lang/Object;JF)V

    add-int/lit8 v5, v8, 0x4

    or-int v1, v25, v23

    move v3, v13

    move-object v13, v7

    move v7, v3

    move/from16 v4, p4

    goto :goto_12

    :pswitch_d
    move-object/from16 v9, p2

    move-object v10, v1

    move-object v7, v13

    move/from16 v8, v20

    move-wide/from16 v5, v21

    const/4 v1, 0x1

    const/16 v17, -0x1

    move v13, v3

    if-ne v11, v1, :cond_15

    invoke-static {v8, v9}, Lﹳٴ/ﹳٴ;->ʼˎ(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    move-wide/from16 v26, v5

    move-wide v5, v3

    move-wide/from16 v3, v26

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˉʿ(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v5, v8, 0x8

    or-int v2, v25, v23

    move v3, v13

    move-object v13, v7

    move v7, v3

    move/from16 v4, p4

    move-object v3, v9

    move v6, v15

    move/from16 v8, v24

    const v16, 0xfffff

    move v9, v2

    move-object v2, v1

    goto :goto_13

    :goto_14
    move-object v6, v0

    move v5, v8

    move v2, v12

    move v7, v13

    move/from16 v20, v17

    move/from16 v19, v18

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v18, v15

    move-object v15, v10

    move-object v10, v1

    goto/16 :goto_18

    :cond_16
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move v13, v3

    move/from16 v3, v20

    move-wide/from16 v5, v21

    const/16 v17, -0x1

    const/16 v4, 0x1b

    if-ne v10, v4, :cond_1a

    const/4 v4, 0x2

    if-ne v11, v4, :cond_19

    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-object v7, v4

    check-cast v7, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;

    iget-boolean v7, v7, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;->ʾˋ:Z

    if-nez v7, :cond_18

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_17

    const/16 v7, 0xa

    goto :goto_15

    :cond_17
    mul-int/lit8 v7, v7, 0x2

    :goto_15
    invoke-interface {v4, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;->ˉˆ(I)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v4

    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v4

    invoke-virtual {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v1

    move v4, v12

    move-object v12, v2

    move v2, v4

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lﹳٴ/ﹳٴ;->ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;I[BIILcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Lcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v1

    move/from16 v4, p4

    move v5, v1

    move-object v1, v12

    move v7, v13

    move v6, v15

    const v16, 0xfffff

    move-object/from16 v13, p6

    move v12, v2

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_19
    move/from16 v26, v12

    move-object v12, v2

    move/from16 v2, v26

    move-object/from16 v1, p1

    move/from16 v24, v8

    move/from16 v20, v17

    move/from16 v19, v18

    move/from16 v17, v9

    move/from16 v18, v15

    move-object v15, v12

    move v12, v13

    goto/16 :goto_16

    :cond_1a
    move/from16 v26, v12

    move-object v12, v2

    move/from16 v2, v26

    const/16 v1, 0x31

    if-gt v10, v1, :cond_1c

    move/from16 v24, v8

    move v1, v9

    int-to-long v8, v7

    move/from16 v4, p4

    move v7, v13

    move/from16 v20, v17

    move/from16 v19, v18

    move-object/from16 v13, p6

    move/from16 v17, v1

    move/from16 v18, v15

    move-object/from16 v1, p1

    move-object v15, v12

    move/from16 v26, v2

    move-object/from16 v2, p2

    move-wide/from16 v27, v5

    move/from16 v5, v26

    move v6, v11

    move-wide/from16 v11, v27

    invoke-virtual/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴᵢ(Ljava/lang/Object;[BIIIIIJIJLcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v6

    move v2, v5

    move v12, v7

    if-eq v6, v3, :cond_1b

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move v5, v6

    move v7, v12

    move/from16 v9, v17

    move/from16 v6, v18

    move/from16 v8, v24

    const v16, 0xfffff

    move v12, v2

    move-object v2, v1

    move-object v1, v15

    goto/16 :goto_1

    :cond_1b
    move-object v10, v1

    move v5, v6

    move v7, v12

    move/from16 v9, v17

    move/from16 v8, v24

    move-object v6, v0

    goto/16 :goto_18

    :cond_1c
    move-object/from16 v1, p1

    move/from16 v24, v8

    move/from16 v20, v17

    move/from16 v19, v18

    move/from16 v17, v9

    move v9, v10

    move/from16 v18, v15

    move-object v15, v12

    move v12, v13

    move-wide/from16 v26, v5

    move v6, v11

    move-wide/from16 v10, v26

    const/16 v4, 0x32

    if-ne v9, v4, :cond_1e

    const/4 v4, 0x2

    if-eq v6, v4, :cond_1d

    :goto_16
    move-object v6, v0

    move-object v10, v1

    move v5, v3

    :goto_17
    move v7, v12

    move/from16 v9, v17

    move/from16 v8, v24

    goto :goto_18

    :cond_1d
    invoke-virtual {v0, v10, v11, v1, v12}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˈٴ(JLjava/lang/Object;I)V

    throw p3

    :cond_1e
    move/from16 v4, p4

    move-object/from16 v13, p6

    move v5, v2

    move v8, v7

    move-object/from16 v2, p2

    move v7, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊʻ(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v7

    move-object v10, v1

    move v2, v5

    move-object v6, v0

    if-eq v7, v3, :cond_1f

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move-object v0, v6

    move v5, v7

    move v7, v12

    move-object v1, v15

    move/from16 v9, v17

    move/from16 v6, v18

    move/from16 v8, v24

    const v16, 0xfffff

    move v12, v2

    goto/16 :goto_8

    :cond_1f
    move v5, v7

    goto :goto_17

    :goto_18
    if-ne v2, v14, :cond_20

    if-eqz v14, :cond_20

    move/from16 v4, p4

    move v12, v2

    :goto_19
    const v0, 0xfffff

    goto :goto_1a

    :cond_20
    move-object v0, v10

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ﾞᴵ:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    if-ne v1, v3, :cond_21

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    move-result-object v1

    iput-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    :cond_21
    move/from16 v3, p4

    move-object v4, v1

    move v0, v2

    move v2, v5

    move-object/from16 v1, p2

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lﹳٴ/ﹳٴ;->ٴﹶ(I[BIILcom/google/crypto/tink/shaded/protobuf/ʿ;Lcom/google/android/gms/internal/measurement/ˈʻ;)I

    move-result v2

    move v5, v0

    move-object/from16 v13, p6

    move v4, v3

    move v12, v5

    move-object v0, v6

    move-object v1, v15

    move/from16 v6, v18

    const v16, 0xfffff

    move-object/from16 v3, p2

    move v5, v2

    goto/16 :goto_8

    :cond_22
    move-object v6, v0

    move-object v15, v1

    move-object v10, v2

    move/from16 v24, v8

    move/from16 v17, v9

    const/16 p3, 0x0

    goto :goto_19

    :goto_1a
    if-eq v8, v0, :cond_23

    int-to-long v0, v8

    invoke-virtual {v15, v10, v0, v1, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23
    iget v0, v6, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔᵢ:I

    :goto_1b
    iget v1, v6, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˎ:I

    if-ge v0, v1, :cond_24

    iget-object v1, v6, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵎﹶ:[I

    aget v1, v1, v0

    move-object/from16 v2, p3

    invoke-virtual {v6, v10, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_24
    if-nez v14, :cond_26

    if-ne v5, v4, :cond_25

    goto :goto_1c

    :cond_25
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_26
    if-gt v5, v4, :cond_27

    if-ne v12, v14, :cond_27

    :goto_1c
    return v5

    :cond_27
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎˊ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    const v1, 0xfffff

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    if-eqz v0, :cond_0

    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳᐧ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Z)V

    return-void

    :cond_0
    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳᐧ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Z)V

    return-void
.end method

.method public final ᵎⁱ(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    .locals 3

    .prologue
    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object p1

    iget-object p2, p3, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    iget v0, p3, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p4}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ˈ()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1, p4, p5}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    invoke-interface {p4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p3, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p3, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ᵎﹶ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    .locals 20

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    iget-object v9, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵎﹶ:[I

    iget v10, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˎ:I

    iget v11, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔᵢ:I

    const/4 v13, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ()I

    move-result v0

    iget v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽ:I

    const/4 v14, 0x0

    if-lt v0, v3, :cond_0

    iget v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˈ:I

    if-gt v0, v3, :cond_0

    invoke-virtual {v1, v0, v14}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˈʿ(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v7, v3

    goto :goto_2

    :cond_0
    const/4 v3, -0x1

    goto :goto_1

    :goto_2
    if-gez v7, :cond_7

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_3

    :goto_3
    if-ge v11, v10, :cond_1

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    if-eqz v13, :cond_2

    check-cast v8, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    move-object v0, v2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iput-object v13, v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    :cond_2
    move-object v6, v1

    goto/16 :goto_11

    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v13, :cond_4

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ﹳٴ(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    move-result-object v13

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v1

    move/from16 v19, v11

    goto/16 :goto_13

    :cond_4
    :goto_5
    invoke-virtual {v8, v14, v4, v13}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ⁱˊ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_6
    if-ge v11, v10, :cond_6

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    if-eqz v13, :cond_2

    :goto_7
    goto :goto_4

    :cond_7
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v5
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v16, 0x0

    const/4 v12, 0x3

    iget-object v15, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    packed-switch v5, :pswitch_data_0

    if-nez v13, :cond_8

    :try_start_4
    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ﹳٴ(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    move-result-object v13

    goto :goto_9

    :catch_0
    move-object v6, v1

    move/from16 v19, v11

    :goto_8
    move-object v11, v4

    goto/16 :goto_f

    :cond_8
    :goto_9
    invoke-virtual {v8, v14, v4, v13}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ⁱˊ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_a

    :goto_a
    if-ge v11, v10, :cond_9

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_9
    if-eqz v13, :cond_2

    goto :goto_7

    :pswitch_0
    :try_start_5
    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼʼ(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v5

    invoke-virtual {v4, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    invoke-virtual {v1, v2, v0, v3, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˋᵔ(Ljava/lang/Object;ILjava/lang/Object;I)V
    :try_end_5
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    move-object v6, v1

    move/from16 v19, v11

    :goto_b
    move-object v11, v4

    goto/16 :goto_12

    :pswitch_1
    move/from16 v19, v11

    :try_start_6
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    :goto_c
    move-object v6, v1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto/16 :goto_13

    :catch_1
    :goto_d
    move-object v6, v1

    goto :goto_8

    :pswitch_2
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_3
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_4
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    const/4 v3, 0x5

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_5
    move/from16 v19, v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v5, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v5

    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_6
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_7
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_8
    move/from16 v19, v11

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼʼ(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v5

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    invoke-virtual {v1, v2, v0, v3, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˋᵔ(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_9
    move/from16 v19, v11

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴʼ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_a
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_b
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    const/4 v3, 0x5

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_c
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_d
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_e
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_f
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    invoke-virtual {v4, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_10
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    const/4 v3, 0x5

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_11
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v11

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v3, v4, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v11, v12, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_12
    move/from16 v19, v11

    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʽﹳ(Ljava/lang/Object;ILjava/lang/Object;)V

    throw v16
    :try_end_6
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :pswitch_13
    move/from16 v19, v11

    :try_start_7
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v6
    :try_end_7
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉٴ(Ljava/lang/Object;JLcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    :try_end_8
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v4, v5

    goto/16 :goto_c

    :catch_2
    move-object v6, v1

    move-object v11, v5

    goto/16 :goto_f

    :catch_3
    move-object/from16 v11, p2

    :goto_e
    move-object v6, v1

    goto/16 :goto_f

    :pswitch_14
    move/from16 v19, v11

    :try_start_9
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵔﹳ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_15
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʼᐧ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_16
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˉˆ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_17
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵔʾ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_18
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    invoke-static {v2, v0, v3, v13, v8}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˆʾ(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;)Ljava/lang/Object;

    goto/16 :goto_c

    :pswitch_19
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->יـ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_1a
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_1b
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʼˎ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_1c
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_1d
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_1e
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˏי(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_1f
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˉʿ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_20
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_21
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵎﹶ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_22
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵔﹳ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_23
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʼᐧ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_24
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˉˆ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_25
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵔʾ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_26
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    invoke-static {v2, v0, v3, v13, v8}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ˆʾ(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˉـ;)Ljava/lang/Object;

    goto/16 :goto_c

    :pswitch_27
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->יـ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_c

    :pswitch_28
    move/from16 v19, v11

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﾞᴵ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    :try_end_9
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_c

    :pswitch_29
    move/from16 v19, v11

    :try_start_a
    invoke-virtual {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v5
    :try_end_a
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v6, p3

    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵎⁱ(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    :try_end_b
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v11, v4

    move-object v0, v6

    move-object v6, v1

    goto/16 :goto_12

    :catch_4
    move-object v11, v4

    move-object v0, v6

    goto/16 :goto_e

    :catch_5
    move-object/from16 v0, p3

    goto/16 :goto_d

    :pswitch_2a
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    :try_start_c
    invoke-virtual {v6, v3, v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵎˊ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)V

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    goto/16 :goto_13

    :pswitch_2b
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_2c
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʼˎ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_2d
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_2e
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_2f
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˏי(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_30
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˉʿ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_31
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_32
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;->ﹳٴ(JLjava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ᵎﹶ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V

    goto/16 :goto_12

    :pswitch_33
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾᵎ(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v3

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    invoke-virtual {v11, v1, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    invoke-virtual {v6, v2, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˑٴ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_34
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v11, v14}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_35
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v1

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_36
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_37
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v1

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_38
    move-object v0, v6

    move/from16 v19, v11

    move v12, v14

    move-object v6, v1

    move-object v11, v4

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v1

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔʾ(I)V

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_39
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v1

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3a
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    invoke-virtual {v11}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v1

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3b
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾᵎ(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    invoke-virtual {v11, v1, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    invoke-virtual {v6, v2, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˑٴ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3c
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-virtual {v6, v3, v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴʼ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3d
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v1

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ٴﹶ(Ljava/lang/Object;JZ)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3e
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v1

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3f
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_40
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v1

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_41
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_42
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_43
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v1

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔʾ(Ljava/lang/Object;JF)V

    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto :goto_12

    :pswitch_44
    move-object v0, v6

    move/from16 v19, v11

    move-object v6, v1

    move-object v11, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʾˋ(I)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v14

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;
    :try_end_c
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v14

    :try_start_d
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˉʿ(Ljava/lang/Object;JD)V
    :try_end_d
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v2, v1

    :try_start_e
    invoke-virtual {v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V
    :try_end_e
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_13

    :catch_6
    move-object v2, v1

    goto :goto_f

    :catch_7
    move-object v6, v1

    move/from16 v19, v11

    const/16 v16, 0x0

    goto/16 :goto_8

    :catch_8
    :goto_f
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v13, :cond_b

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ﹳٴ(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    move-result-object v0

    move-object v13, v0

    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v11, v13}, Lcom/google/crypto/tink/shaded/protobuf/ˉـ;->ⁱˊ(ILcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v0, :cond_e

    move/from16 v11, v19

    :goto_10
    if-ge v11, v10, :cond_c

    aget v0, v9, v11

    invoke-virtual {v6, v2, v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_c
    if-eqz v13, :cond_d

    move-object v0, v2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iput-object v13, v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    :cond_d
    :goto_11
    return-void

    :cond_e
    :goto_12
    move-object v1, v6

    move-object v4, v11

    move/from16 v11, v19

    move-object/from16 v6, p3

    goto/16 :goto_0

    :goto_13
    move/from16 v11, v19

    :goto_14
    if-ge v11, v10, :cond_f

    aget v1, v9, v11

    invoke-virtual {v6, v2, v1, v13}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_f
    if-eqz v13, :cond_10

    check-cast v8, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v2

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iput-object v13, v1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    :cond_10
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔʾ(I)V
    .locals 1

    .prologue
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ⁱˊ:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ᵔٴ(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {v0, v1, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    return-void
.end method

.method public final ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)Z
    .locals 11

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʽ(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʽ(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ﾞᴵ(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ﾞᴵ(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˑﹳ(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˑﹳ(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_2
    return v2

    :cond_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(ILjava/lang/Object;)Z
    .locals 6

    .prologue
    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result p1

    and-int v0, p1, v1

    int-to-long v0, v0

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result p1

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :pswitch_8
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_0
    instance-of p2, p1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʽ(JLjava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_b
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ﾞᴵ(JLjava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˑﹳ(JLjava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v5, p1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v0, v2, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 9

    .prologue
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->יـ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʾᵎ(I)V

    iput v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->memoizedHashCode:I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ᵔﹳ()V

    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_3

    const/16 v7, 0x3c

    if-eq v4, v7, :cond_2

    const/16 v7, 0x44

    if-eq v4, v7, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v7

    check-cast v8, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    iput-boolean v1, v8, Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;->ʾˋ:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;

    iget-boolean v5, v4, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;->ʾˋ:Z

    if-eqz v5, :cond_4

    iput-boolean v1, v4, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;->ʾˋ:Z

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    invoke-virtual {p0, v4, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v4

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼᐧ(I)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v4

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/ʿ;

    iget-boolean v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ʿ;->ˑﹳ:Z

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﹳٴ:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʼˈ(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˊˋ(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ـˆ(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v2, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ـˆ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˏי(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v2, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔٴ(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ﹳٴ:Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˉʿ:Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/ˉٴ;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ٴﹶ:Lcom/google/crypto/tink/shaded/protobuf/ʽʽ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    move-object v5, v2

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;

    iget-boolean v5, v5, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;->ʾˋ:Z

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    invoke-interface {v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;->ˉˆ(I)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v2

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-lez v3, :cond_3

    move-object v1, v2

    :cond_3
    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʻٴ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ʻٴ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼˎ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʽ(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ٴﹶ(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔʾ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉˆ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ﾞᴵ(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔʾ(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˑﹳ(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˉʿ(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ˆﾞ(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ﾞʻ:Lcom/google/crypto/tink/shaded/protobuf/ˉـ;

    invoke-static {p1, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵˑ;->ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ˉـ;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳᐧ(Ljava/lang/Object;IIII)Z
    .locals 1

    .prologue
    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᵔﹳ(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ﾞᴵ(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ᵔٴ;->ᴵᵔ(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/ˈʻ;)I

    return-void
.end method
