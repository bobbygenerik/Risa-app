.class public final Landroidx/datastore/preferences/protobuf/ᵎˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ʼˈ;


# static fields
.field public static final ˉˆ:Lsun/misc/Unsafe;

.field public static final ᵔʾ:[I


# instance fields
.field public final ʼˎ:I

.field public final ʽ:I

.field public final ˆʾ:Landroidx/datastore/preferences/protobuf/ˆﾞ;

.field public final ˈ:I

.field public final ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

.field public final ˑﹳ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

.field public final ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

.field public final ᵎﹶ:[I

.field public final ᵔᵢ:I

.field public final ⁱˊ:[Ljava/lang/Object;

.field public final ﹳٴ:[I

.field public final ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

.field public final ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ:[I

    invoke-static {}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʼˎ()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/ﹳٴ;[IIILandroidx/datastore/preferences/protobuf/ˆﾞ;Landroidx/datastore/preferences/protobuf/ᵢˏ;Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ٴᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ⁱˊ:[Ljava/lang/Object;

    iput p3, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʽ:I

    iput p4, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˈ:I

    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞᴵ:Z

    iput-object p6, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎﹶ:[I

    iput p7, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔᵢ:I

    iput p8, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼˎ:I

    iput-object p9, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ:Landroidx/datastore/preferences/protobuf/ˆﾞ;

    iput-object p10, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˑﹳ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

    iput-object p13, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    return-void
.end method

.method public static ʼʼ(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static ʼᐧ(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ᵎﹶ()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ʾᵎ(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static ˊʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static ـˆ(Landroidx/datastore/preferences/protobuf/ˊˋ;Landroidx/datastore/preferences/protobuf/ˆﾞ;Landroidx/datastore/preferences/protobuf/ᵢˏ;Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ٴᵢ;)Landroidx/datastore/preferences/protobuf/ᵎˊ;
    .locals 34

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ⁱˊ:Ljava/lang/String;

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

    sget-object v7, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ:[I

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
    sget-object v14, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ʽ:[Ljava/lang/Object;

    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

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

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ()I

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

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˊʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˊʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˊʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ()I

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

    invoke-static {v10, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˊʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    new-instance v1, Landroidx/datastore/preferences/protobuf/ᵎˊ;

    iget-object v14, v0, Landroidx/datastore/preferences/protobuf/ˊˋ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v30

    move-object v9, v1

    invoke-direct/range {v9 .. v22}, Landroidx/datastore/preferences/protobuf/ᵎˊ;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/ﹳٴ;[IIILandroidx/datastore/preferences/protobuf/ˆﾞ;Landroidx/datastore/preferences/protobuf/ᵢˏ;Landroidx/datastore/preferences/protobuf/ʿ;Landroidx/datastore/preferences/protobuf/ˉˆ;Landroidx/datastore/preferences/protobuf/ٴᵢ;)V

    return-object v9
.end method

.method public static ᵎˊ(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static ᵢˏ(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final ʻٴ(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result p2

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final ʼˎ(Landroidx/datastore/preferences/protobuf/ʻٴ;)I
    .locals 29

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v6, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v3, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    array-length v10, v5

    if-ge v2, v10, :cond_22

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v10

    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

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

    const/4 v4, 0x0

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
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v10, v8

    int-to-long v13, v10

    sget-object v10, Landroidx/datastore/preferences/protobuf/ﹳᐧ;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ﹳᐧ;

    iget v10, v10, Landroidx/datastore/preferences/protobuf/ﹳᐧ;->ʾˋ:I

    if-lt v11, v10, :cond_3

    sget-object v10, Landroidx/datastore/preferences/protobuf/ﹳᐧ;->ʽʽ:Landroidx/datastore/preferences/protobuf/ﹳᐧ;

    iget v10, v10, Landroidx/datastore/preferences/protobuf/ﹳᐧ;->ʾˋ:I

    :cond_3
    const/16 v10, 0x3f

    const/16 v16, 0x2

    const/16 v17, 0x4

    const/16 v18, 0x8

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_2b

    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v5

    add-int/2addr v5, v11

    :goto_3
    add-int/2addr v9, v5

    goto/16 :goto_2b

    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    shl-long v11, v13, v15

    shr-long/2addr v13, v10

    xor-long/2addr v11, v13

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v10

    :goto_4
    add-int/2addr v10, v5

    :goto_5
    add-int/2addr v9, v10

    goto/16 :goto_2b

    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v10

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    :goto_6
    add-int/2addr v5, v10

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    :goto_7
    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    :goto_8
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto :goto_6

    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto :goto_6

    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊʻ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v11

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v11

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v10, :cond_4

    check-cast v5, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊʻ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)I

    move-result v5

    :goto_9
    add-int/2addr v5, v9

    move v9, v5

    goto/16 :goto_2b

    :cond_4
    check-cast v5, Ljava/lang/String;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴᵢ(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v10

    goto :goto_9

    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v10

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v10

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    div-int/lit8 v11, v2, 0x3

    mul-int/lit8 v11, v11, 0x2

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v11, v13, v11

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ˊʻ;

    check-cast v11, Landroidx/datastore/preferences/protobuf/ᴵᵔ;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    :cond_5
    move/from16 v23, v3

    move/from16 v24, v4

    goto/16 :goto_14

    :cond_6
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˊʻ;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v13, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v19

    iget-object v8, v11, Landroidx/datastore/preferences/protobuf/ᴵᵔ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˈٴ;

    move/from16 v20, v10

    iget-object v10, v8, Landroidx/datastore/preferences/protobuf/ˈٴ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ٴﹳ;

    sget v21, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ʽ:I

    invoke-static {v15}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v21

    move/from16 v22, v15

    sget-object v15, Landroidx/datastore/preferences/protobuf/ٴﹳ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ﹳﹳ;

    if-ne v10, v15, :cond_7

    mul-int/lit8 v21, v21, 0x2

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move/from16 v23, v3

    const-string v3, "There is no way to get here, but the compiler thinks otherwise."

    move/from16 v24, v4

    packed-switch v10, :pswitch_data_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_13
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    shl-long v27, v25, v22

    shr-long v25, v25, v20

    xor-long v25, v27, v25

    invoke-static/range {v25 .. v26}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v7

    :goto_b
    move-object v10, v5

    goto/16 :goto_f

    :pswitch_14
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shl-int/lit8 v10, v7, 0x1

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v10

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v7

    goto :goto_b

    :pswitch_15
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v5

    :goto_c
    move/from16 v7, v18

    goto/16 :goto_f

    :pswitch_16
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v5

    :goto_d
    move/from16 v7, v17

    goto/16 :goto_f

    :pswitch_17
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v10, v5

    int-to-long v4, v7

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v7

    goto/16 :goto_f

    :pswitch_18
    move-object v10, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v7

    goto/16 :goto_f

    :pswitch_19
    move-object v10, v5

    instance-of v4, v7, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v4, :cond_8

    check-cast v7, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v4

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    :goto_e
    add-int v7, v5, v4

    goto/16 :goto_f

    :cond_8
    check-cast v7, [B

    array-length v4, v7

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto :goto_e

    :pswitch_1a
    move-object v10, v5

    check-cast v7, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v7, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v7

    add-int/2addr v7, v5

    goto/16 :goto_f

    :pswitch_1b
    move-object v10, v5

    const/4 v4, 0x0

    check-cast v7, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v7, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v7, v4}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v7

    goto/16 :goto_f

    :pswitch_1c
    move-object v10, v5

    instance-of v4, v7, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v4, :cond_9

    check-cast v7, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v4

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto :goto_e

    :cond_9
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴᵢ(Ljava/lang/String;)I

    move-result v7

    goto :goto_f

    :pswitch_1d
    move-object v10, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v7, v22

    goto :goto_f

    :pswitch_1e
    move-object v10, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :pswitch_1f
    move-object v10, v5

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c

    :pswitch_20
    move-object v10, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v7

    goto :goto_f

    :pswitch_21
    move-object v10, v5

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v7

    goto :goto_f

    :pswitch_22
    move-object v10, v5

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v7

    goto :goto_f

    :pswitch_23
    move-object v10, v5

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_d

    :pswitch_24
    move-object v10, v5

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c

    :goto_f
    add-int v7, v7, v21

    iget-object v4, v8, Landroidx/datastore/preferences/protobuf/ˈٴ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ٴﹳ;

    invoke-static/range {v16 .. v16}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    if-ne v4, v15, :cond_a

    mul-int/lit8 v5, v5, 0x2

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_25
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-long v14, v3, v22

    shr-long v3, v3, v20

    xor-long/2addr v3, v14

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto/16 :goto_13

    :pswitch_26
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v3

    goto/16 :goto_13

    :pswitch_27
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    move/from16 v3, v18

    goto/16 :goto_13

    :pswitch_28
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_11
    move/from16 v3, v17

    goto/16 :goto_13

    :pswitch_29
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto/16 :goto_13

    :pswitch_2a
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v3

    goto/16 :goto_13

    :pswitch_2b
    instance-of v3, v14, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v3, :cond_b

    check-cast v14, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    :goto_12
    add-int/2addr v3, v4

    goto/16 :goto_13

    :cond_b
    check-cast v14, [B

    array-length v3, v14

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    goto :goto_12

    :pswitch_2c
    check-cast v14, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v14, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    goto :goto_12

    :pswitch_2d
    const/4 v4, 0x0

    check-cast v14, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v14, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v14, v4}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v3

    goto :goto_13

    :pswitch_2e
    instance-of v3, v14, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v3, :cond_c

    check-cast v14, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    goto :goto_12

    :cond_c
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴᵢ(Ljava/lang/String;)I

    move-result v3

    goto :goto_13

    :pswitch_2f
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v3, v22

    goto :goto_13

    :pswitch_30
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_11

    :pswitch_31
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_10

    :pswitch_32
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto :goto_13

    :pswitch_33
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto :goto_13

    :pswitch_34
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto :goto_13

    :pswitch_35
    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_11

    :pswitch_36
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_10

    :goto_13
    add-int/2addr v3, v5

    add-int/2addr v3, v7

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int v4, v4, v19

    add-int/2addr v13, v4

    move-object v5, v10

    move/from16 v10, v20

    move/from16 v15, v22

    move/from16 v3, v23

    move/from16 v4, v24

    const v8, 0xfffff

    goto/16 :goto_a

    :goto_14
    add-int/2addr v9, v13

    :cond_d
    :goto_15
    move/from16 v3, v23

    move/from16 v4, v24

    goto/16 :goto_2b

    :pswitch_37
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_e

    const/4 v8, 0x0

    goto :goto_17

    :cond_e
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_16
    if-ge v7, v5, :cond_f

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v4}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v10

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_f
    :goto_17
    add-int/2addr v9, v8

    goto :goto_15

    :pswitch_38
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵎﹶ(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    :goto_18
    add-int/2addr v5, v4

    add-int/2addr v5, v3

    add-int/2addr v9, v5

    goto :goto_15

    :pswitch_39
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞᴵ(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto :goto_18

    :pswitch_3a
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto :goto_18

    :pswitch_3b
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto :goto_18

    :pswitch_3c
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto :goto_18

    :pswitch_3d
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵔᵢ(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_3e
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_3f
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_40
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_41
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˈ(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_42
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʼˎ(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_43
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˑﹳ(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_44
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_45
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_d

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_18

    :pswitch_46
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_10

    :goto_19
    const/4 v5, 0x0

    goto :goto_1b

    :cond_10
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵎﹶ(Ljava/util/List;)I

    move-result v3

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    :goto_1a
    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    :cond_11
    :goto_1b
    add-int/2addr v9, v5

    goto/16 :goto_15

    :pswitch_47
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_12

    goto :goto_19

    :cond_12
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞᴵ(Ljava/util/List;)I

    move-result v3

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto :goto_1a

    :pswitch_48
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v12, v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʽ(ILjava/util/List;)I

    move-result v3

    :goto_1c
    add-int/2addr v9, v3

    move/from16 v3, v23

    goto/16 :goto_2b

    :pswitch_49
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v12, v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ⁱˊ(ILjava/util/List;)I

    move-result v3

    goto :goto_1c

    :pswitch_4a
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_13

    goto :goto_19

    :cond_13
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ(Ljava/util/List;)I

    move-result v3

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto :goto_1a

    :pswitch_4b
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_14

    goto :goto_19

    :cond_14
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵔᵢ(Ljava/util/List;)I

    move-result v3

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto :goto_1a

    :pswitch_4c
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_19

    :cond_15
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    mul-int/2addr v5, v4

    const/4 v4, 0x0

    :goto_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_11

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v7

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :pswitch_4d
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_16

    const/4 v7, 0x0

    goto :goto_1f

    :cond_16
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v7

    mul-int/2addr v7, v5

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v5, :cond_17

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v10, v4}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v10

    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_17
    :goto_1f
    add-int/2addr v9, v7

    goto/16 :goto_15

    :pswitch_4e
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_19

    :cond_18
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    mul-int/2addr v5, v4

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v4, :cond_11

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v10, :cond_19

    check-cast v8, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    move v5, v10

    goto :goto_21

    :cond_19
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴᵢ(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v5

    move v5, v8

    :goto_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :pswitch_4f
    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v22, v15

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1a

    const/4 v4, 0x0

    goto :goto_22

    :cond_1a
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v3

    :goto_22
    add-int/2addr v9, v4

    goto/16 :goto_15

    :pswitch_50
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v12, v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ⁱˊ(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1c

    :pswitch_51
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v12, v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʽ(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1c

    :pswitch_52
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_19

    :cond_1b
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˈ(Ljava/util/List;)I

    move-result v3

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_53
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_19

    :cond_1c
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʼˎ(Ljava/util/List;)I

    move-result v3

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto/16 :goto_1a

    :pswitch_54
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_19

    :cond_1d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˑﹳ(Ljava/util/List;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    goto/16 :goto_1b

    :pswitch_55
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v12, v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ⁱˊ(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1c

    :pswitch_56
    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v12, v3}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʽ(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1c

    :pswitch_57
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v7

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v5

    add-int/2addr v5, v8

    goto/16 :goto_3

    :pswitch_58
    move/from16 v20, v10

    move/from16 v22, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    shl-long v10, v7, v22

    shr-long v7, v7, v20

    xor-long/2addr v7, v10

    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    :goto_23
    add-int/2addr v5, v0

    add-int/2addr v9, v5

    :cond_1e
    :goto_24
    move-object/from16 v0, p0

    goto/16 :goto_2b

    :pswitch_59
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    shl-int/lit8 v7, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v7

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v0

    :goto_25
    add-int/2addr v0, v5

    :goto_26
    add-int/2addr v9, v0

    goto :goto_24

    :pswitch_5a
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    :goto_27
    add-int/lit8 v0, v0, 0x8

    :goto_28
    add-int/2addr v9, v0

    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_2b

    :pswitch_5b
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    :goto_29
    add-int/lit8 v0, v0, 0x4

    goto :goto_28

    :pswitch_5c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    int-to-long v7, v0

    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v0

    goto :goto_25

    :pswitch_5d
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v0

    goto :goto_25

    :pswitch_5e
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊʻ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)I

    move-result v0

    goto :goto_26

    :pswitch_5f
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v7

    sget-object v8, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v8

    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/ﹳٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v8

    add-int/2addr v9, v7

    goto/16 :goto_2b

    :pswitch_60
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v5, :cond_20

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊʻ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)I

    move-result v0

    :goto_2a
    add-int/2addr v0, v9

    move v9, v0

    goto/16 :goto_24

    :cond_20
    check-cast v0, Ljava/lang/String;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴᵢ(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_2a

    :pswitch_61
    move/from16 v22, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_28

    :pswitch_62
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    goto/16 :goto_29

    :pswitch_63
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    goto/16 :goto_27

    :pswitch_64
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    int-to-long v7, v0

    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v0

    goto/16 :goto_25

    :pswitch_65
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto/16 :goto_23

    :pswitch_66
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto/16 :goto_23

    :pswitch_67
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v0

    goto/16 :goto_29

    :pswitch_68
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v5

    goto/16 :goto_7

    :cond_21
    :goto_2b
    add-int/lit8 v2, v2, 0x3

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_22
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v2, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ⁱˊ()I

    move-result v1

    add-int/2addr v1, v9

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
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

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
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
    iget v4, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔᵢ:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_e

    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎﹶ:[I

    aget v4, v4, v8

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    aget v10, v9, v4

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v6

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v6, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

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

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_c

    const/16 v12, 0x11

    if-eq v9, v12, :cond_c

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_9

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_8

    const/16 v5, 0x44

    if-eq v9, v5, :cond_8

    const/16 v5, 0x31

    if-eq v9, v5, :cond_9

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ˊʻ;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_4

    :cond_4
    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v2, v9, v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/ᴵᵔ;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/ᴵᵔ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˈٴ;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/ˈٴ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ٴﹳ;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/ٴﹳ;->ʾˋ:Landroidx/datastore/preferences/protobuf/ᵎʻ;

    sget-object v9, Landroidx/datastore/preferences/protobuf/ᵎʻ;->ᵎⁱ:Landroidx/datastore/preferences/protobuf/ᵎʻ;

    if-eq v2, v9, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_7

    sget-object v5, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v5

    :cond_7
    invoke-interface {v5, v9}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ʽ(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v10, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ʽ(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_9
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v2

    move v9, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ʽ(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v9, v10, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ʽ(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_3
    return v7

    :cond_d
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_e
    return v5
.end method

.method public final ʽʽ(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    .locals 3

    .prologue
    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object p1

    iget-object p2, p3, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    iget v0, p3, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    invoke-virtual {p3, v1, p4, p5}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-interface {p4, v1}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p3, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p3, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ʽﹳ(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final ʾˋ(I)I
    .locals 7

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʽ:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˈ:I

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_2

    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v4, 0x3

    aget v6, v0, v5

    if-ne p1, v6, :cond_0

    return v5

    :cond_0
    if-ge p1, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˆﾞ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʽʽ;)V
    .locals 33

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    array-length v8, v7

    sget-object v9, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    const v10, 0xfffff

    move v3, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v8, :cond_11

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v5

    aget v12, v7, v2

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

    move-result v13

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v13, v14, :cond_2

    add-int/lit8 v14, v2, 0x2

    aget v14, v7, v14

    and-int v11, v14, v10

    if-eq v11, v3, :cond_1

    if-ne v11, v10, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v11

    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v11

    :cond_1
    ushr-int/lit8 v11, v14, 0x14

    shl-int v11, v15, v11

    move/from16 v32, v11

    move v11, v5

    move/from16 v5, v32

    goto :goto_2

    :cond_2
    move v11, v5

    const/4 v5, 0x0

    :goto_2
    and-int/2addr v11, v10

    int-to-long v10, v11

    const/16 v16, 0x3f

    packed-switch v13, :pswitch_data_0

    :cond_3
    :goto_3
    move-object v13, v6

    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_18

    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v10

    invoke-virtual {v6, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    shl-long v17, v10, v15

    shr-long v10, v10, v16

    xor-long v10, v17, v10

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˏᵢ(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧﾞ(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ـˏ(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊˋ(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˈⁱ(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧﾞ(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˑٴ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v10

    iget-object v11, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v11, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉـ(ILandroidx/datastore/preferences/protobuf/ﹳٴ;Landroidx/datastore/preferences/protobuf/ʼˈ;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_4

    check-cast v5, Ljava/lang/String;

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ʿ(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    check-cast v5, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˑٴ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˈʿ(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊˋ(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ـˏ(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˈⁱ(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˏᵢ(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˏᵢ(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊˋ(II)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ـˏ(IJ)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    div-int/lit8 v10, v2, 0x3

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v10, v13, v10

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ᴵᵔ;

    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/ᴵᵔ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˈٴ;

    iget-object v13, v10, Landroidx/datastore/preferences/protobuf/ˈٴ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ٴﹳ;

    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/ˈٴ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ٴﹳ;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ˊʻ;

    iget-object v14, v6, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˊʻ;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    invoke-virtual {v14, v12, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎᵔ(II)V

    move/from16 v19, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    move/from16 v20, v15

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    sget v21, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ʽ:I

    invoke-static/range {v20 .. v20}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v21

    move/from16 v22, v3

    sget-object v3, Landroidx/datastore/preferences/protobuf/ٴﹳ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ﹳﹳ;

    if-ne v10, v3, :cond_5

    mul-int/lit8 v21, v21, 0x2

    :cond_5
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    move/from16 v24, v4

    const-string v4, "There is no way to get here, but the compiler thinks otherwise."

    const/16 v25, 0x8

    const/16 v26, 0x4

    move-object/from16 v27, v5

    packed-switch v23, :pswitch_data_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_13
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    shl-long v30, v28, v20

    shr-long v28, v28, v16

    xor-long v28, v30, v28

    invoke-static/range {v28 .. v29}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v11

    :goto_6
    move v5, v11

    goto/16 :goto_b

    :pswitch_14
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    shl-int/lit8 v23, v11, 0x1

    shr-int/lit8 v11, v11, 0x1f

    xor-int v11, v23, v11

    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v11

    goto :goto_6

    :pswitch_15
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    move/from16 v5, v25

    goto/16 :goto_b

    :pswitch_16
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    move/from16 v5, v26

    goto/16 :goto_b

    :pswitch_17
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v5, v11

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto/16 :goto_b

    :pswitch_18
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v5

    goto/16 :goto_b

    :pswitch_19
    instance-of v5, v11, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v5, :cond_6

    check-cast v11, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v6

    :goto_9
    add-int/2addr v5, v6

    goto/16 :goto_b

    :cond_6
    check-cast v11, [B

    array-length v5, v11

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v6

    goto :goto_9

    :pswitch_1a
    check-cast v11, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v11, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v6

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v11

    add-int/2addr v6, v11

    :goto_a
    move v5, v6

    goto :goto_b

    :pswitch_1b
    const/4 v5, 0x0

    check-cast v11, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v11, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v11, v5}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v6

    goto :goto_a

    :pswitch_1c
    instance-of v5, v11, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v5, :cond_7

    check-cast v11, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v6

    goto :goto_9

    :cond_7
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴᵢ(Ljava/lang/String;)I

    move-result v5

    goto :goto_b

    :pswitch_1d
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v5, v20

    goto :goto_b

    :pswitch_1e
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :pswitch_1f
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :pswitch_20
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto :goto_b

    :pswitch_21
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto :goto_b

    :pswitch_22
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v5

    goto :goto_b

    :pswitch_23
    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_8

    :pswitch_24
    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :goto_b
    add-int v5, v5, v21

    invoke-static/range {v19 .. v19}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉٴ(I)I

    move-result v6

    if-ne v13, v3, :cond_8

    mul-int/lit8 v6, v6, 0x2

    :cond_8
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_25
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-long v25, v3, v20

    shr-long v3, v3, v16

    xor-long v3, v25, v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto/16 :goto_f

    :pswitch_26
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v3

    goto/16 :goto_f

    :pswitch_27
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_c
    move/from16 v3, v25

    goto/16 :goto_f

    :pswitch_28
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_d
    move/from16 v3, v26

    goto/16 :goto_f

    :pswitch_29
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto/16 :goto_f

    :pswitch_2a
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v3

    goto/16 :goto_f

    :pswitch_2b
    instance-of v3, v15, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v3, :cond_9

    check-cast v15, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v15}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    :goto_e
    add-int/2addr v3, v4

    goto/16 :goto_f

    :cond_9
    check-cast v15, [B

    array-length v3, v15

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    goto :goto_e

    :pswitch_2c
    check-cast v15, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v15, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    goto :goto_e

    :pswitch_2d
    const/4 v3, 0x0

    check-cast v15, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v15, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v15, v3}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﹳٴ(Landroidx/datastore/preferences/protobuf/ʼˈ;)I

    move-result v3

    goto :goto_f

    :pswitch_2e
    instance-of v3, v15, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v3, :cond_a

    check-cast v15, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v15}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᵎⁱ(I)I

    move-result v4

    goto :goto_e

    :cond_a
    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴᵢ(Ljava/lang/String;)I

    move-result v3

    goto :goto_f

    :pswitch_2f
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v3, v20

    goto :goto_f

    :pswitch_30
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :pswitch_31
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c

    :pswitch_32
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto :goto_f

    :pswitch_33
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto :goto_f

    :pswitch_34
    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ٴʼ(J)I

    move-result v3

    goto :goto_f

    :pswitch_35
    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_d

    :pswitch_36
    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_c

    :goto_f
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    invoke-virtual {v14, v3}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧᴵ(I)V

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move/from16 v5, v20

    invoke-static {v14, v10, v5, v3}, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ⁱˊ(Landroidx/datastore/preferences/protobuf/ﾞʻ;Landroidx/datastore/preferences/protobuf/ٴﹳ;ILjava/lang/Object;)V

    move/from16 v3, v19

    invoke-static {v14, v13, v3, v4}, Landroidx/datastore/preferences/protobuf/ᵔﹳ;->ⁱˊ(Landroidx/datastore/preferences/protobuf/ﾞʻ;Landroidx/datastore/preferences/protobuf/ٴﹳ;ILjava/lang/Object;)V

    move-object/from16 v6, p2

    move v11, v3

    move/from16 v3, v22

    move/from16 v4, v24

    move-object/from16 v5, v27

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_b
    move/from16 v22, v3

    move/from16 v24, v4

    :cond_c
    move-object/from16 v13, p2

    :cond_d
    :goto_10
    move/from16 v3, v22

    move/from16 v4, v24

    goto/16 :goto_4

    :pswitch_37
    move/from16 v22, v3

    move/from16 v24, v4

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v5

    sget-object v6, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_c

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v13, p2

    invoke-virtual {v13, v3, v10, v5}, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :pswitch_38
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʾᵎ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_10

    :pswitch_39
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ـˆ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_10

    :pswitch_3a
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʻٴ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_10

    :pswitch_3b
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʽﹳ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_10

    :pswitch_3c
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˉˆ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_3d
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʼʼ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_3e
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˉʿ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_3f
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʼᐧ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_40
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵔﹳ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_41
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->יـ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_42
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵢˏ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_43
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˏי(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_44
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳᐧ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_45
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    move v5, v15

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵔʾ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_10

    :pswitch_46
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʾᵎ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    :goto_12
    move v6, v5

    :goto_13
    move/from16 v3, v22

    move/from16 v4, v24

    goto/16 :goto_18

    :pswitch_47
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v5, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ـˆ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_12

    :pswitch_48
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v5, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʻٴ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_12

    :pswitch_49
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v5, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʽﹳ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_12

    :pswitch_4a
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v5, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˉˆ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_12

    :pswitch_4b
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v5, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʼʼ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto :goto_12

    :pswitch_4c
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    iget-object v6, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v6, v3, v10}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˑٴ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :pswitch_4d
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v5

    sget-object v6, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    :goto_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_d

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v11, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    check-cast v10, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v11, v3, v10, v5}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉـ(ILandroidx/datastore/preferences/protobuf/ﹳٴ;Landroidx/datastore/preferences/protobuf/ʼˈ;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :pswitch_4e
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    iget-object v6, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v6, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v3, v10}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ʿ(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :pswitch_4f
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˉʿ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_50
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v6, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ʼᐧ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_51
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v6, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵔﹳ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_52
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v6, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->יـ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_53
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v6, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵢˏ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_54
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v6, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˏי(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_55
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v6, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳᐧ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_56
    move/from16 v22, v3

    move/from16 v24, v4

    move-object v13, v6

    const/4 v6, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v13, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ᵔʾ(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ʽʽ;Z)V

    goto/16 :goto_13

    :pswitch_57
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v10

    invoke-virtual {v13, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;)V

    goto/16 :goto_18

    :pswitch_58
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    const/16 v20, 0x1

    shl-long v14, v10, v20

    shr-long v10, v10, v16

    xor-long/2addr v10, v14

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˏᵢ(IJ)V

    :cond_e
    :goto_17
    move-object/from16 v0, p0

    goto/16 :goto_18

    :pswitch_59
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    shl-int/lit8 v10, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v10

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧﾞ(II)V

    goto :goto_17

    :pswitch_5a
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ـˏ(IJ)V

    goto :goto_17

    :pswitch_5b
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊˋ(II)V

    goto :goto_17

    :pswitch_5c
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˈⁱ(II)V

    goto :goto_17

    :pswitch_5d
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ᐧﾞ(II)V

    goto :goto_17

    :pswitch_5e
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˑٴ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    goto/16 :goto_17

    :pswitch_5f
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v10

    iget-object v11, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v11, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˉـ(ILandroidx/datastore/preferences/protobuf/ﹳٴ;Landroidx/datastore/preferences/protobuf/ʼˈ;)V

    goto/16 :goto_18

    :pswitch_60
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_f

    check-cast v0, Ljava/lang/String;

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ʿ(ILjava/lang/String;)V

    goto/16 :goto_17

    :cond_f
    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˑٴ(ILandroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    goto/16 :goto_17

    :pswitch_61
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʽ(JLjava/lang/Object;)Z

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˈʿ(IZ)V

    goto/16 :goto_17

    :pswitch_62
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊˋ(II)V

    goto/16 :goto_17

    :pswitch_63
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ـˏ(IJ)V

    goto/16 :goto_17

    :pswitch_64
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˈⁱ(II)V

    goto/16 :goto_17

    :pswitch_65
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˏᵢ(IJ)V

    goto/16 :goto_17

    :pswitch_66
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˏᵢ(IJ)V

    goto/16 :goto_17

    :pswitch_67
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˑﹳ(JLjava/lang/Object;)F

    move-result v0

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ˊˋ(II)V

    goto/16 :goto_17

    :pswitch_68
    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v10, v11, v1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˈ(JLjava/lang/Object;)D

    move-result-wide v10

    iget-object v5, v13, Landroidx/datastore/preferences/protobuf/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/ﾞʻ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/ﾞʻ;->ـˏ(IJ)V

    :cond_10
    :goto_18
    add-int/lit8 v2, v2, 0x3

    move-object v6, v13

    const v10, 0xfffff

    goto/16 :goto_0

    :cond_11
    move-object v13, v6

    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v2, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {v1, v13}, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ˈ(Landroidx/datastore/preferences/protobuf/ʽʽ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
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

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public final ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ:Landroidx/datastore/preferences/protobuf/ˆﾞ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˑﹳ:Landroidx/datastore/preferences/protobuf/ﹳٴ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ʼˎ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    return-object v0
.end method

.method public final ˈٴ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    const/4 v1, 0x2

    const v2, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p1, v2

    int-to-long v2, p1

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object p1, p2, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵˊ()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p3, p1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞᴵ:Z

    if-eqz v0, :cond_1

    and-int/2addr p1, v2

    int-to-long v2, p1

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object p1, p2, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾˋ()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p3, p1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p1, v2

    int-to-long v0, p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˑﹳ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object p1

    invoke-static {v0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;
    .locals 3

    .prologue
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ʼˈ;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    add-int/lit8 v2, p1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final ˉˆ(Ljava/lang/Object;IIII)Z
    .locals 1

    .prologue
    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

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

.method public final ˉٴ(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {v0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    return-void
.end method

.method public final ˏי(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    aget v1, v0, p2

    invoke-virtual {p0, v1, p2, p3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object p3

    invoke-virtual {p0, v1, p2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-interface {p3, p2, v5}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public final ˑﹳ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʽʽ;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆﾞ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʽʽ;)V

    return-void
.end method

.method public final יـ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    .prologue
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v4

    invoke-interface {p3, v4, p2}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v4

    :cond_3
    invoke-interface {p3, p2, v3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

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

.method public final ٴʼ(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/ﹳٴ;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    return-void
.end method

.method public final ٴᵢ(ILjava/lang/Object;)V
    .locals 4

    .prologue
    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

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

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v2

    or-int/2addr p1, v2

    invoke-static {v0, v1, p2, p1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    return-void
.end method

.method public final ٴﹶ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2

    .prologue
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    aget p3, p3, p2

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p3, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ(I)V

    return-void
.end method

.method public final ᴵˊ(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, p1}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object p1

    iget-object p2, p4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    iget p3, p4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-interface {p5}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    invoke-virtual {p4, v0, p5, p6}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-interface {p5, v0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    if-eq v0, p3, :cond_0

    iput v0, p4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ᴵᵔ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    const v1, 0xfffff

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    if-eqz v0, :cond_0

    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p3}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->יـ(Landroidx/datastore/preferences/protobuf/ـˆ;Z)V

    return-void

    :cond_0
    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p3}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->יـ(Landroidx/datastore/preferences/protobuf/ـˆ;Z)V

    return-void
.end method

.method public final ᵎⁱ(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ﹳٴ;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    return-void
.end method

.method public final ᵎﹶ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;)Z
    .locals 11

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v9, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/ـˏ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʽ(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʽ(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˑﹳ(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˑﹳ(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ʻٴ;Landroidx/datastore/preferences/protobuf/ʻٴ;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˈ(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˈ(JLjava/lang/Object;)D

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
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ʿᵢ;->equals(Ljava/lang/Object;)Z

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

.method public final ᵔʾ(ILjava/lang/Object;)Z
    .locals 6

    .prologue
    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result p1

    and-int v0, p1, v1

    int-to-long v0, v0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

    move-result p1

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʽʽ:Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :pswitch_8
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_0
    instance-of p2, p1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʽʽ:Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʽ(JLjava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_b
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˑﹳ(JLjava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˈ(JLjava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v5, p1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v0, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

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

.method public final ᵔי(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    aget p1, v0, p1

    return p1
.end method

.method public final ᵔᵢ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    .locals 18

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v8, v1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    iget-object v9, v1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎﹶ:[I

    iget v10, v1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼˎ:I

    iget v11, v1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔᵢ:I

    const/4 v0, 0x0

    move-object v12, v0

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾˋ(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    if-gez v3, :cond_6

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    :goto_1
    if-ge v11, v10, :cond_0

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    if-eqz v12, :cond_1

    check-cast v8, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    move-object v0, v2

    check-cast v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    :cond_1
    move-object v6, v1

    goto/16 :goto_e

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_3

    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/ʿ;->ﹳٴ(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ʿᵢ;

    move-result-object v0

    move-object v12, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_3
    move-object v6, v1

    goto/16 :goto_10

    :cond_3
    :goto_4
    invoke-virtual {v8, v13, v4, v12}, Landroidx/datastore/preferences/protobuf/ʿ;->ⁱˊ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_5
    if-ge v11, v10, :cond_5

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    if-eqz v12, :cond_1

    :goto_6
    goto :goto_2

    :cond_6
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

    move-result v7
    :try_end_3
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x3

    iget-object v14, v1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    packed-switch v7, :pswitch_data_0

    if-nez v12, :cond_7

    :try_start_4
    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/ʿ;->ﹳٴ(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ʿᵢ;

    move-result-object v12

    goto :goto_8

    :catch_0
    move-object v6, v1

    :goto_7
    move-object v14, v4

    goto/16 :goto_c

    :cond_7
    :goto_8
    invoke-virtual {v8, v13, v4, v12}, Landroidx/datastore/preferences/protobuf/ʿ;->ⁱˊ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_9

    :goto_9
    if-ge v11, v10, :cond_8

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_8
    if-eqz v12, :cond_1

    goto :goto_6

    :pswitch_0
    :try_start_5
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʻٴ(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v7

    invoke-virtual {v4, v15}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4, v6, v7, v5}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-virtual {v1, v2, v0, v3, v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴʼ(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/ﹳٴ;)V

    :cond_9
    :goto_a
    move-object v6, v1

    move-object v14, v4

    goto/16 :goto_f

    :pswitch_1
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_2
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v7, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v7

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ(I)V

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_7
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˑﹳ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_8
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʻٴ(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v7

    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4, v6, v7, v5}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-virtual {v1, v2, v0, v3, v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴʼ(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/ﹳٴ;)V

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {v1, v6, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˈٴ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_10
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_11
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v6

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    :pswitch_12
    :try_start_6
    iget-object v0, v1, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ⁱˊ:[Ljava/lang/Object;

    div-int/lit8 v6, v3, 0x3

    const/16 v16, 0x2

    mul-int/lit8 v6, v6, 0x2

    aget-object v0, v0, v6

    move-object v6, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳᐧ(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ᵔʾ;Landroidx/datastore/preferences/protobuf/ٴﹶ;)V

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object v6, v1

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_3

    :catch_1
    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object v6, v1

    goto/16 :goto_c

    :pswitch_13
    move v7, v3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v6
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    :try_start_7
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᴵˊ(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v4, v5

    goto/16 :goto_a

    :catch_2
    move-object v6, v1

    move-object v14, v5

    goto/16 :goto_c

    :pswitch_14
    :try_start_8
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳᐧ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_15
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵔﹳ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_16
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʼᐧ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_17
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˉˆ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_18
    move v7, v3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵔᵢ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ(I)V

    invoke-static {v2, v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˆʾ(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ـˆ;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʿ;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_19
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˏי(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_1a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_1b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_1c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ٴﹶ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_1d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˉʿ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_1e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽﹳ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_1f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵔʾ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_20
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﾞʻ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_21
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵎﹶ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_22
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳᐧ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_23
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵔﹳ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_24
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʼᐧ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_25
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˉˆ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_26
    move v7, v3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵔᵢ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ(I)V

    invoke-static {v2, v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/ـˏ;->ˆʾ(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ـˆ;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʿ;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_27
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˏי(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_a

    :pswitch_28
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﾞᴵ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a

    :pswitch_29
    move v7, v3

    :try_start_9
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v5
    :try_end_9
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v3, v6

    move-object/from16 v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʽʽ(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v0, v6

    move-object v6, v1

    move-object v1, v0

    move-object v0, v4

    :goto_b
    move-object v14, v0

    goto/16 :goto_f

    :catch_3
    move-object/from16 v17, v6

    move-object v6, v1

    move-object/from16 v1, v17

    goto/16 :goto_7

    :catch_4
    move-object v6, v1

    move-object/from16 v1, p3

    goto/16 :goto_7

    :pswitch_2a
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    :try_start_b
    invoke-virtual {v6, v3, v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᴵᵔ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)V

    goto :goto_b

    :catch_5
    move-object v14, v0

    goto/16 :goto_c

    :pswitch_2b
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :pswitch_2c
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˆʾ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto :goto_b

    :pswitch_2d
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ٴﹶ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto :goto_b

    :pswitch_2e
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˉʿ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto :goto_b

    :pswitch_2f
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽﹳ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto :goto_b

    :pswitch_30
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵔʾ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_b

    :pswitch_31
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﾞʻ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_b

    :pswitch_32
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ᵢˏ;->ﹳٴ(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/ـˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ᵎﹶ(Landroidx/datastore/preferences/protobuf/ـˆ;)V

    goto/16 :goto_b

    :pswitch_33
    move-object v6, v1

    move v7, v3

    move-object v0, v4

    move-object v1, v5

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʽﹳ(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v4

    invoke-virtual {v0, v15}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v0, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-virtual {v6, v2, v7, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎⁱ(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ﹳٴ;)V

    goto/16 :goto_b

    :pswitch_34
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_35
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_36
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_37
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_38
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v4

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ(I)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v14

    invoke-static {v14, v15, v2, v4}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_39
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3a
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˑﹳ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3b
    move-object v6, v1

    move v7, v3

    move-object v0, v4

    move-object v1, v5

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʽﹳ(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/ﹳٴ;

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v4

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v0, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-virtual {v6, v2, v7, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎⁱ(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/ﹳٴ;)V

    goto/16 :goto_b

    :pswitch_3c
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-virtual {v6, v3, v0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˈٴ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3d
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v5

    sget-object v14, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v14, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˆʾ(Ljava/lang/Object;JZ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3e
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3f
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_40
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_41
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_42
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_43
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v5

    sget-object v14, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v14, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˉʿ(Ljava/lang/Object;JF)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_44
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʾᵎ(I)J

    move-result-wide v3

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v14
    :try_end_b
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    sget-object v0, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;
    :try_end_c
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v14

    move-object/from16 v14, p2

    :try_start_d
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞʻ(Ljava/lang/Object;JD)V
    :try_end_d
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v2, v1

    :try_start_e
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_10

    :catch_6
    move-object v2, v1

    goto :goto_c

    :catch_7
    move-object/from16 v14, p2

    :catch_8
    :goto_c
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_a

    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/ʿ;->ﹳٴ(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ʿᵢ;

    move-result-object v0

    move-object v12, v0

    :cond_a
    invoke-virtual {v8, v13, v14, v12}, Landroidx/datastore/preferences/protobuf/ʿ;->ⁱˊ(ILandroidx/datastore/preferences/protobuf/ٴﹶ;Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v0, :cond_d

    :goto_d
    if-ge v11, v10, :cond_b

    aget v0, v9, v11

    invoke-virtual {v6, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_b
    if-eqz v12, :cond_c

    move-object v0, v2

    check-cast v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    :cond_c
    :goto_e
    return-void

    :cond_d
    :goto_f
    move-object/from16 v5, p3

    move-object v1, v6

    move-object v4, v14

    goto/16 :goto_0

    :goto_10
    if-ge v11, v10, :cond_e

    aget v1, v9, v11

    invoke-virtual {v6, v2, v1, v12}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_e
    if-eqz v12, :cond_f

    check-cast v8, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v2

    check-cast v1, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iput-object v12, v1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    :cond_f
    throw v0

    :cond_10
    move-object v6, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mutating immutable message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

.method public final ᵔﹳ(IILjava/lang/Object;)Z
    .locals 2

    .prologue
    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p2, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 9

    .prologue
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/ʻٴ;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ٴﹶ(I)V

    iput v1, v0, Landroidx/datastore/preferences/protobuf/ﹳٴ;->memoizedHashCode:I

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ᵔᵢ()V

    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

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
    sget-object v4, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v7

    check-cast v8, Landroidx/datastore/preferences/protobuf/ˊʻ;

    iput-boolean v1, v8, Landroidx/datastore/preferences/protobuf/ˊʻ;->ʾˋ:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/ـˆ;

    check-cast v4, Landroidx/datastore/preferences/protobuf/ⁱˊ;

    iget-boolean v5, v4, Landroidx/datastore/preferences/protobuf/ⁱˊ;->ʾˋ:Z

    if-eqz v5, :cond_4

    iput-boolean v1, v4, Landroidx/datastore/preferences/protobuf/ⁱˊ;->ʾˋ:Z

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    invoke-virtual {p0, v4, v3, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v4

    sget-object v7, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ(I)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v4

    sget-object v7, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉˆ:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/ʻٴ;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    iget-boolean v0, p1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ˑﹳ:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p1, Landroidx/datastore/preferences/protobuf/ʿᵢ;->ˑﹳ:Z

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
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼᐧ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˏי(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˏי(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v2, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉٴ(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/ـˏ;->ﹳٴ:Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/datastore/preferences/protobuf/ٴᵢ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ˊʻ;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴﹶ:Landroidx/datastore/preferences/protobuf/ᵢˏ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/ـˆ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ـˆ;

    move-object v3, v2

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    iget v4, v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    move-object v5, v1

    check-cast v5, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    iget v5, v5, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ʽʽ:I

    if-lez v4, :cond_2

    if-lez v5, :cond_2

    move-object v8, v2

    check-cast v8, Landroidx/datastore/preferences/protobuf/ⁱˊ;

    iget-boolean v8, v8, Landroidx/datastore/preferences/protobuf/ⁱˊ;->ʾˋ:Z

    if-nez v8, :cond_1

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->ˈ(I)Landroidx/datastore/preferences/protobuf/ˋᵔ;

    move-result-object v2

    :cond_1
    move-object v3, v2

    check-cast v3, Landroidx/datastore/preferences/protobuf/ⁱˊ;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/ⁱˊ;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-lez v4, :cond_3

    move-object v1, v2

    :cond_3
    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->יـ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->יـ(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʽ(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˆʾ(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉʿ(JLjava/lang/Object;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ᵔʾ(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˑﹳ(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˉʿ(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔʾ(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˈ(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞʻ(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ٴᵢ(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    invoke-static {p1, v5, p2}, Landroidx/datastore/preferences/protobuf/ـˏ;->ٴﹶ(Landroidx/datastore/preferences/protobuf/ʿ;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v5, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Mutating immutable message: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

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

.method public final ﹳᐧ(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ᵔʾ;Landroidx/datastore/preferences/protobuf/ٴﹶ;)V
    .locals 8

    .prologue
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {p2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ˉʿ:Landroidx/datastore/preferences/protobuf/ٴᵢ;

    if-nez p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/datastore/preferences/protobuf/ˊʻ;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ˊʻ;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ˊʻ;->ⁱˊ()Landroidx/datastore/preferences/protobuf/ˊʻ;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p2

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˊʻ;

    iget-boolean v3, v3, Landroidx/datastore/preferences/protobuf/ˊʻ;->ʾˋ:Z

    if-nez v3, :cond_1

    sget-object v3, Landroidx/datastore/preferences/protobuf/ˊʻ;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ˊʻ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˊʻ;->ⁱˊ()Landroidx/datastore/preferences/protobuf/ˊʻ;

    move-result-object v3

    invoke-static {v3, p2}, Landroidx/datastore/preferences/protobuf/ٴᵢ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/ˊʻ;

    invoke-static {v0, v1, p1, v3}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ˉˆ(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v3

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/datastore/preferences/protobuf/ˊʻ;

    check-cast p3, Landroidx/datastore/preferences/protobuf/ᴵᵔ;

    iget-object p1, p3, Landroidx/datastore/preferences/protobuf/ᴵᵔ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˈٴ;

    const/4 p3, 0x2

    invoke-virtual {p5, p3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v0, p5, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞʻ(I)I

    move-result v1

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/ˈٴ;->ʽ:Ljava/lang/Object;

    const-string v3, ""

    move-object v4, v2

    :goto_1
    :try_start_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_7

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    const-string v7, "Unable to parse map entry."

    if-eq v5, v6, :cond_5

    if-eq v5, p3, :cond_4

    :try_start_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʾᵎ()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object v5, p1, Landroidx/datastore/preferences/protobuf/ˈٴ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ٴﹳ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p5, v5, v6, p4}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʼˎ(Landroidx/datastore/preferences/protobuf/ٴﹳ;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ᵔʾ;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v5, p1, Landroidx/datastore/preferences/protobuf/ˈٴ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ٴﹳ;

    const/4 v6, 0x0

    invoke-virtual {p5, v5, v6, v6}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʼˎ(Landroidx/datastore/preferences/protobuf/ٴﹳ;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ᵔʾ;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʾᵎ()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    invoke-virtual {p2, v3, v4}, Landroidx/datastore/preferences/protobuf/ˊʻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˆʾ(I)V

    return-void

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˆʾ(I)V

    throw p1
.end method

.method public final ﾞʻ(I)V
    .locals 1

    .prologue
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ⁱˊ:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ﾞᴵ(Landroidx/datastore/preferences/protobuf/ʻٴ;)I
    .locals 11

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﹳٴ:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔי(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵎˊ(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ﹳٴ:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ʼʼ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵢˏ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ᵔﹳ(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

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

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ʽ(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ﹳٴ:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﾞᴵ(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ᵎﹶ(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˑﹳ(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ʽ:Landroidx/datastore/preferences/protobuf/ᴵʼ;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ˈ(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎˊ;->ﾞʻ:Landroidx/datastore/preferences/protobuf/ʿ;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ᵎᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ʻٴ;->unknownFields:Landroidx/datastore/preferences/protobuf/ʿᵢ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ʿᵢ;->hashCode()I

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
