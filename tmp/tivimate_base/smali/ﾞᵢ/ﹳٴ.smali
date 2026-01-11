.class public final Lﾞᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞᵢ/ⁱˊ;


# static fields
.field public static final ʽ:[I


# instance fields
.field public ⁱˊ:I

.field public final synthetic ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lﾞᵢ/ﹳٴ;->ʽ:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﾞᵢ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ([BII)I
    .locals 22

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lﾞᵢ/ﹳٴ;->ﹳٴ:I

    packed-switch v2, :pswitch_data_0

    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x4

    move/from16 v3, p2

    :goto_0
    if-gt v3, v2, :cond_3

    aget-byte v4, v1, v3

    const/16 v5, 0x40

    const/16 v6, 0xc0

    if-ne v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    :cond_0
    const/16 v5, 0x7f

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_2

    :cond_1
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ٴﹶ(I[B)I

    move-result v4

    iget v5, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v5, v3

    sub-int v5, v5, p2

    ushr-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x9

    shr-int/lit8 v4, v4, 0x9

    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔﹳ([BII)V

    :cond_2
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_3
    sub-int v3, v3, p2

    iget v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v3

    iput v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    return v3

    :pswitch_0
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x8

    move/from16 v3, p2

    :goto_1
    if-gt v3, v2, :cond_a

    aget-byte v4, v1, v3

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0xef

    if-ne v5, v6, :cond_5

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v1, v4

    and-int/lit8 v6, v5, 0xd

    if-eqz v6, :cond_4

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v6, v3, 0x2

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v3, 0x3

    aget-byte v9, v1, v8

    and-int/lit16 v9, v9, 0xff

    iget v10, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v10, v3

    sub-int v10, v10, p2

    and-int/lit16 v3, v5, 0xf0

    shl-int/lit8 v3, v3, 0xd

    shl-int/lit8 v7, v7, 0x9

    or-int/2addr v3, v7

    shl-int/lit8 v7, v9, 0x1

    or-int/2addr v3, v7

    sub-int/2addr v3, v10

    and-int/lit8 v5, v5, 0xf

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xf0

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    ushr-int/lit8 v4, v3, 0x10

    and-int/lit8 v4, v4, 0xf

    ushr-int/lit8 v5, v3, 0x7

    and-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x4

    and-int/lit16 v5, v5, 0xe0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v3, v3, 0xd

    and-int/lit16 v3, v3, 0x80

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    move v3, v6

    goto :goto_4

    :cond_5
    and-int/lit8 v4, v4, 0x7f

    const/16 v6, 0x17

    if-ne v4, v6, :cond_9

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v4, v7

    and-int/lit16 v7, v4, 0xe80

    if-eqz v7, :cond_7

    add-int/lit8 v5, v3, 0x4

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﾞʻ(I[B)I

    move-result v6

    shl-int/lit8 v7, v4, 0x8

    xor-int/2addr v7, v6

    const v8, 0xf8003

    and-int/2addr v7, v8

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    :goto_2
    move v3, v5

    goto :goto_4

    :cond_6
    and-int/lit16 v4, v4, -0x1000

    ushr-int/lit8 v5, v6, 0x14

    add-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0xc

    or-int/lit16 v5, v5, 0x117

    goto :goto_3

    :cond_7
    ushr-int/lit8 v7, v4, 0x1b

    add-int/lit16 v8, v4, -0x3100

    and-int/lit16 v8, v8, 0x3f80

    and-int/lit8 v9, v7, 0x1d

    if-lt v8, v9, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v5, v3, 0x4

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ٴﹶ(I[B)I

    move-result v5

    iget v8, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v8, v3

    sub-int v8, v8, p2

    sub-int/2addr v5, v8

    ushr-int/lit8 v4, v4, 0xc

    shl-int/lit8 v8, v5, 0x14

    or-int/2addr v4, v8

    shl-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    add-int/lit16 v5, v5, 0x800

    and-int/lit16 v5, v5, -0x1000

    or-int/2addr v5, v6

    :goto_3
    invoke-static {v1, v3, v5}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﹳᐧ([BII)V

    add-int/lit8 v5, v3, 0x4

    invoke-static {v1, v5, v4}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﹳᐧ([BII)V

    add-int/lit8 v3, v3, 0x6

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    :cond_a
    sub-int v3, v3, p2

    iget v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v3

    iput v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    return v3

    :pswitch_1
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x4

    move/from16 v3, p2

    :goto_5
    if-gt v3, v2, :cond_c

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xfc

    const/16 v5, 0x48

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ٴﹶ(I[B)I

    move-result v4

    iget v5, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v5, v3

    sub-int v5, v5, p2

    neg-int v5, v5

    add-int/2addr v4, v5

    const v5, 0x3fffffc

    and-int/2addr v4, v5

    const v5, 0x48000001

    or-int/2addr v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔﹳ([BII)V

    :cond_b
    add-int/lit8 v3, v3, 0x4

    goto :goto_5

    :cond_c
    sub-int v3, v3, p2

    iget v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v3

    iput v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    return v3

    :pswitch_2
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x4

    move/from16 v3, p2

    :goto_6
    if-gt v3, v2, :cond_e

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v1, v4

    and-int/lit16 v6, v5, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_d

    add-int/lit8 v6, v3, 0x3

    aget-byte v8, v1, v6

    and-int/lit16 v9, v8, 0xf8

    const/16 v10, 0xf8

    if-ne v9, v10, :cond_d

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x13

    aget-byte v9, v1, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0xb

    or-int/2addr v5, v9

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, v3, 0x2

    aget-byte v9, v1, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    shl-int/lit8 v5, v5, 0x1

    iget v9, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v9, v3

    sub-int v9, v9, p2

    sub-int/2addr v5, v9

    ushr-int/lit8 v9, v5, 0x1

    ushr-int/lit8 v11, v5, 0x14

    and-int/lit8 v11, v11, 0x7

    or-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    ushr-int/lit8 v4, v5, 0xc

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    ushr-int/lit8 v3, v5, 0x9

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    int-to-byte v3, v9

    aput-byte v3, v1, v8

    move v3, v8

    :cond_d
    add-int/lit8 v3, v3, 0x2

    goto :goto_6

    :cond_e
    sub-int v3, v3, p2

    iget v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v3

    iput v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    return v3

    :pswitch_3
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x4

    move/from16 v3, p2

    :goto_7
    if-gt v3, v2, :cond_10

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xeb

    if-ne v4, v5, :cond_f

    add-int/lit8 v4, v3, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x2

    iget v7, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v7, v3

    sub-int v7, v7, p2

    sub-int/2addr v5, v7

    ushr-int/lit8 v7, v5, 0x2

    ushr-int/lit8 v8, v5, 0x12

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    ushr-int/lit8 v4, v5, 0xa

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    int-to-byte v4, v7

    aput-byte v4, v1, v3

    :cond_f
    add-int/lit8 v3, v3, 0x4

    goto :goto_7

    :cond_10
    sub-int v3, v3, p2

    iget v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v3

    iput v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    return v3

    :pswitch_4
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x4

    move/from16 v3, p2

    :goto_8
    if-gt v3, v2, :cond_14

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v5, v4, 0xfc

    const/16 v6, 0x94

    if-ne v5, v6, :cond_11

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﾞʻ(I[B)I

    move-result v4

    iget v5, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v5, v3

    sub-int v5, v5, p2

    ushr-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    add-int/2addr v4, v5

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x6c000000

    or-int/2addr v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﹳᐧ([BII)V

    goto :goto_9

    :cond_11
    and-int/lit16 v4, v4, 0x9f

    const/16 v5, 0x90

    if-ne v4, v5, :cond_13

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﾞʻ(I[B)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x1d

    and-int/lit8 v5, v5, 0x3

    ushr-int/lit8 v6, v4, 0x3

    const v7, 0x1ffffc

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    const/high16 v6, 0x20000

    add-int v7, v5, v6

    const/high16 v8, 0x1c0000

    and-int/2addr v7, v8

    if-eqz v7, :cond_12

    goto :goto_9

    :cond_12
    iget v7, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v7, v3

    sub-int v7, v7, p2

    ushr-int/lit8 v7, v7, 0xc

    neg-int v7, v7

    add-int/2addr v5, v7

    const v7, -0x6fffffe1

    and-int/2addr v4, v7

    and-int/lit8 v7, v5, 0x3

    shl-int/lit8 v7, v7, 0x1d

    or-int/2addr v4, v7

    const v7, 0x3fffc

    and-int/2addr v7, v5

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v4, v7

    and-int/2addr v5, v6

    neg-int v5, v5

    const/high16 v6, 0xe00000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﹳᐧ([BII)V

    :cond_13
    :goto_9
    add-int/lit8 v3, v3, 0x4

    goto :goto_8

    :cond_14
    sub-int v3, v3, p2

    iget v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v3

    iput v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    return v3

    :pswitch_5
    add-int v2, p2, p3

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    move/from16 v4, p2

    :goto_a
    if-gt v4, v2, :cond_1a

    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0x1f

    sget-object v6, Lﾞᵢ/ﹳٴ;->ʽ:[I

    aget v5, v6, v5

    const/4 v7, 0x5

    const/4 v8, 0x0

    :goto_b
    const/4 v9, 0x3

    if-ge v8, v9, :cond_19

    ushr-int v9, v5, v8

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-nez v9, :cond_15

    move/from16 p3, v3

    move/from16 v17, v7

    goto/16 :goto_e

    :cond_15
    ushr-int/lit8 v9, v7, 0x3

    and-int/lit8 v11, v7, 0x7

    const-wide/16 v12, 0x0

    move/from16 p3, v3

    move-wide v15, v12

    const/4 v14, 0x0

    :goto_c
    const/4 v3, 0x6

    if-ge v14, v3, :cond_16

    add-int v3, v4, v9

    add-int/2addr v3, v14

    aget-byte v3, v1, v3

    move/from16 v17, v7

    int-to-long v6, v3

    const-wide/16 v18, 0xff

    and-long v6, v6, v18

    mul-int/lit8 v3, v14, 0x8

    shl-long/2addr v6, v3

    or-long/2addr v15, v6

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v17

    goto :goto_c

    :cond_16
    move/from16 v17, v7

    ushr-long v6, v15, v11

    const/16 v14, 0x25

    ushr-long v18, v6, v14

    const-wide/16 v20, 0xf

    and-long v18, v18, v20

    const-wide/16 v20, 0x5

    cmp-long v14, v18, v20

    if-nez v14, :cond_18

    const/16 v14, 0x9

    ushr-long v18, v6, v14

    const-wide/16 v20, 0x7

    and-long v18, v18, v20

    cmp-long v12, v18, v12

    if-eqz v12, :cond_17

    goto :goto_e

    :cond_17
    const/16 v12, 0xd

    ushr-long v13, v6, v12

    const-wide/32 v18, 0xfffff

    and-long v13, v13, v18

    long-to-int v13, v13

    const/16 v14, 0x24

    move/from16 v20, v10

    move/from16 v21, v11

    ushr-long v10, v6, v14

    long-to-int v10, v10

    and-int/lit8 v10, v10, 0x1

    shl-int/lit8 v10, v10, 0x14

    or-int/2addr v10, v13

    shl-int/lit8 v10, v10, 0x4

    iget v11, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v11, v4

    sub-int v11, v11, p2

    sub-int/2addr v10, v11

    ushr-int/lit8 v10, v10, 0x4

    const-wide v13, -0x11ffffe001L

    and-long/2addr v6, v13

    int-to-long v10, v10

    and-long v13, v10, v18

    shl-long v12, v13, v12

    or-long/2addr v6, v12

    const-wide/32 v12, 0x100000

    and-long/2addr v10, v12

    shl-long v10, v10, p3

    or-long/2addr v6, v10

    shl-int v10, v20, v21

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    and-long/2addr v10, v15

    shl-long v6, v6, v21

    or-long/2addr v6, v10

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v3, :cond_18

    add-int v11, v4, v9

    add-int/2addr v11, v10

    mul-int/lit8 v12, v10, 0x8

    ushr-long v12, v6, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_18
    :goto_e
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v17, 0x29

    move/from16 v3, p3

    goto/16 :goto_b

    :cond_19
    move/from16 p3, v3

    add-int/lit8 v4, v4, 0x10

    goto/16 :goto_a

    :cond_1a
    sub-int v4, v4, p2

    iget v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v4

    iput v1, v0, Lﾞᵢ/ﹳٴ;->ⁱˊ:I

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
