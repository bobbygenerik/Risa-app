.class public final Lﹶʽ/ᵔﹳ;
.super Lﹶʽ/ʼᐧ;
.source "SourceFile"


# instance fields
.field public final ʼˈ:I

.field public final ˆﾞ:I

.field public final ˈʿ:I

.field public final ˈⁱ:I

.field public final ˉٴ:Z

.field public final ˊʻ:Lﹶʽ/ˆʾ;

.field public final ˊˋ:Z

.field public final ˋᵔ:I

.field public final ˑٴ:Z

.field public final ـˏ:Z

.field public final ٴʼ:I

.field public final ٴᵢ:Z

.field public final ᴵᵔ:Z

.field public final ᵎˊ:I

.field public final ᵎⁱ:Z

.field public final ᵔי:I

.field public final ᵔٴ:I

.field public final ﹳـ:Z


# direct methods
.method public constructor <init>(ILʽⁱ/ـˏ;ILﹶʽ/ˆʾ;ILjava/lang/String;IZ)V
    .locals 6

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lﹶʽ/ʼᐧ;-><init>(ILʽⁱ/ـˏ;I)V

    iput-object p4, p0, Lﹶʽ/ᵔﹳ;->ˊʻ:Lﹶʽ/ˆʾ;

    iget-boolean p1, p4, Lﹶʽ/ˆʾ;->ـˆ:Z

    iget-object p2, p4, Lʽⁱ/ˉـ;->ʼˎ:Lʼʻ/ᵎⁱ;

    iget-object p3, p4, Lʽⁱ/ˉـ;->ˆʾ:Lʼʻ/ᵎⁱ;

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const/4 p7, 0x0

    iput-boolean p7, p0, Lﹶʽ/ᵔﹳ;->ˊˋ:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p8, :cond_5

    iget-object v3, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v4, v3, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-eq v4, v1, :cond_1

    iget v5, p4, Lʽⁱ/ˉـ;->ﹳٴ:I

    if-gt v4, v5, :cond_5

    :cond_1
    iget v4, v3, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq v4, v1, :cond_2

    iget v5, p4, Lʽⁱ/ˉـ;->ⁱˊ:I

    if-gt v4, v5, :cond_5

    :cond_2
    iget v4, v3, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_3

    iget v5, p4, Lʽⁱ/ˉـ;->ʽ:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    :cond_3
    iget v3, v3, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    if-eq v3, v1, :cond_4

    iget p4, p4, Lʽⁱ/ˉـ;->ˈ:I

    if-gt v3, p4, :cond_5

    :cond_4
    move p4, v2

    goto :goto_1

    :cond_5
    move p4, p7

    :goto_1
    iput-boolean p4, p0, Lﹶʽ/ᵔﹳ;->ᴵᵔ:Z

    if-eqz p8, :cond_a

    iget-object p4, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p8, p4, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-eq p8, v1, :cond_6

    if-ltz p8, :cond_a

    :cond_6
    iget p8, p4, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq p8, v1, :cond_7

    if-ltz p8, :cond_a

    :cond_7
    iget p8, p4, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    cmpl-float v3, p8, v0

    if-eqz v3, :cond_8

    int-to-float v3, p7

    cmpl-float p8, p8, v3

    if-ltz p8, :cond_a

    :cond_8
    iget p4, p4, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    if-eq p4, v1, :cond_9

    if-ltz p4, :cond_a

    :cond_9
    move p4, v2

    goto :goto_2

    :cond_a
    move p4, p7

    :goto_2
    iput-boolean p4, p0, Lﹶʽ/ᵔﹳ;->ٴᵢ:Z

    invoke-static {p5, p7}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p4

    iput-boolean p4, p0, Lﹶʽ/ᵔﹳ;->ˉٴ:Z

    iget-object p4, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p8, p4, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    cmpl-float v0, p8, v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p8, p8, v0

    if-ltz p8, :cond_b

    move p8, v2

    goto :goto_3

    :cond_b
    move p8, p7

    :goto_3
    iput-boolean p8, p0, Lﹶʽ/ᵔﹳ;->ᵎⁱ:Z

    iget p8, p4, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    iput p8, p0, Lﹶʽ/ᵔﹳ;->ٴʼ:I

    iget p8, p4, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-eq p8, v1, :cond_d

    iget p4, p4, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-ne p4, v1, :cond_c

    goto :goto_4

    :cond_c
    mul-int/2addr p8, p4

    goto :goto_5

    :cond_d
    :goto_4
    move p8, v1

    :goto_5
    iput p8, p0, Lﹶʽ/ᵔﹳ;->ᵎˊ:I

    move p4, p7

    :goto_6
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p8

    const v0, 0x7fffffff

    if-ge p4, p8, :cond_f

    iget-object p8, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p8, v3, p7}, Lﹶʽ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_f
    move p8, p7

    move p4, v0

    :goto_7
    iput p4, p0, Lﹶʽ/ᵔﹳ;->ˆﾞ:I

    iput p8, p0, Lﹶʽ/ᵔﹳ;->ᵔٴ:I

    iget-object p3, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p3, p3, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    sget-object p4, Lﹶʽ/ﹳᐧ;->ﾞʻ:Lʼʻ/ʿ;

    if-eqz p3, :cond_10

    if-nez p3, :cond_10

    move p3, v0

    goto :goto_8

    :cond_10
    invoke-static {p7}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_8
    iput p3, p0, Lﹶʽ/ᵔﹳ;->ˈʿ:I

    iget-object p3, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p3, p3, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    if-eqz p3, :cond_12

    and-int/2addr p3, v2

    if-eqz p3, :cond_11

    goto :goto_9

    :cond_11
    move p3, p7

    goto :goto_a

    :cond_12
    :goto_9
    move p3, v2

    :goto_a
    iput-boolean p3, p0, Lﹶʽ/ᵔﹳ;->ˑٴ:Z

    invoke-static {p6}, Lﹶʽ/ﹳᐧ;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_13

    move p3, v2

    goto :goto_b

    :cond_13
    move p3, p7

    :goto_b
    iget-object p4, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-static {p4, p6, p3}, Lﹶʽ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lﹶʽ/ᵔﹳ;->ˋᵔ:I

    move p3, p7

    :goto_c
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    if-ge p3, p4, :cond_15

    iget-object p4, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object p4, p4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    if-eqz p4, :cond_14

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    move v0, p3

    goto :goto_d

    :cond_14
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_15
    :goto_d
    iput v0, p0, Lﹶʽ/ᵔﹳ;->ᵔי:I

    and-int/lit16 p2, p5, 0x180

    const/16 p3, 0x80

    if-ne p2, p3, :cond_16

    move p2, v2

    goto :goto_e

    :cond_16
    move p2, p7

    :goto_e
    iput-boolean p2, p0, Lﹶʽ/ᵔﹳ;->ـˏ:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p3, 0x40

    if-ne p2, p3, :cond_17

    move p2, v2

    goto :goto_f

    :cond_17
    move p2, p7

    :goto_f
    iput-boolean p2, p0, Lﹶʽ/ᵔﹳ;->ﹳـ:Z

    iget-object p2, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object p3, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const/4 p4, 0x2

    if-nez p3, :cond_18

    goto :goto_12

    :cond_18
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p6

    const/4 p8, 0x4

    const/4 v0, 0x3

    sparse-switch p6, :sswitch_data_0

    :goto_10
    move p3, v1

    goto :goto_11

    :sswitch_0
    const-string p6, "video/x-vnd.on2.vp9"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_19

    goto :goto_10

    :cond_19
    move p3, p8

    goto :goto_11

    :sswitch_1
    const-string p6, "video/avc"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    goto :goto_10

    :cond_1a
    move p3, v0

    goto :goto_11

    :sswitch_2
    const-string p6, "video/hevc"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1b

    goto :goto_10

    :cond_1b
    move p3, p4

    goto :goto_11

    :sswitch_3
    const-string p6, "video/av01"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1c

    goto :goto_10

    :cond_1c
    move p3, v2

    goto :goto_11

    :sswitch_4
    const-string p6, "video/dolby-vision"

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1d

    goto :goto_10

    :cond_1d
    move p3, p7

    :goto_11
    packed-switch p3, :pswitch_data_0

    :goto_12
    move p8, p7

    goto :goto_13

    :pswitch_0
    move p8, p4

    goto :goto_13

    :pswitch_1
    move p8, v2

    goto :goto_13

    :pswitch_2
    move p8, v0

    goto :goto_13

    :pswitch_3
    const/4 p8, 0x5

    :goto_13
    :pswitch_4
    iput p8, p0, Lﹶʽ/ᵔﹳ;->ˈⁱ:I

    iget-boolean p3, p0, Lﹶʽ/ᵔﹳ;->ᴵᵔ:Z

    iget-object p6, p0, Lﹶʽ/ᵔﹳ;->ˊʻ:Lﹶʽ/ˆʾ;

    iget p8, p2, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    and-int/lit16 p8, p8, 0x4000

    if-eqz p8, :cond_1e

    goto :goto_14

    :cond_1e
    iget-boolean p8, p6, Lﹶʽ/ˆʾ;->ʾˋ:Z

    invoke-static {p5, p8}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p8

    if-nez p8, :cond_1f

    goto :goto_14

    :cond_1f
    if-nez p3, :cond_20

    iget-boolean p6, p6, Lﹶʽ/ˆʾ;->ʻٴ:Z

    if-nez p6, :cond_20

    goto :goto_14

    :cond_20
    invoke-static {p5, p7}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p6

    if-eqz p6, :cond_21

    iget-boolean p6, p0, Lﹶʽ/ᵔﹳ;->ٴᵢ:Z

    if-eqz p6, :cond_21

    if-eqz p3, :cond_21

    iget p2, p2, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    if-eq p2, v1, :cond_21

    and-int/2addr p1, p5

    if-eqz p1, :cond_21

    move p7, p4

    goto :goto_14

    :cond_21
    move p7, v2

    :goto_14
    iput p7, p0, Lﹶʽ/ᵔﹳ;->ʼˈ:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ʽ(Lﹶʽ/ᵔﹳ;Lﹶʽ/ᵔﹳ;)I
    .locals 4

    .prologue
    iget-boolean v0, p0, Lﹶʽ/ᵔﹳ;->ˉٴ:Z

    iget-boolean v1, p1, Lﹶʽ/ᵔﹳ;->ˉٴ:Z

    sget-object v2, Lʼʻ/ᵢˏ;->ﹳٴ:Lʼʻ/ʾᵎ;

    invoke-virtual {v2, v0, v1}, Lʼʻ/ʾᵎ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ᵔﹳ;->ˆﾞ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lﹶʽ/ᵔﹳ;->ˆﾞ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lʼʻ/ˉـ;->ʽʽ:Lʼʻ/ˉـ;

    invoke-virtual {v0, v1, v2, v3}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ᵔﹳ;->ᵔٴ:I

    iget v2, p1, Lﹶʽ/ᵔﹳ;->ᵔٴ:I

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ᵔﹳ;->ˈʿ:I

    iget v2, p1, Lﹶʽ/ᵔﹳ;->ˈʿ:I

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔﹳ;->ˑٴ:Z

    iget-boolean v2, p1, Lﹶʽ/ᵔﹳ;->ˑٴ:Z

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ᵔﹳ;->ˋᵔ:I

    iget v2, p1, Lﹶʽ/ᵔﹳ;->ˋᵔ:I

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔﹳ;->ᵎⁱ:Z

    iget-boolean v2, p1, Lﹶʽ/ᵔﹳ;->ᵎⁱ:Z

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔﹳ;->ᴵᵔ:Z

    iget-boolean v2, p1, Lﹶʽ/ᵔﹳ;->ᴵᵔ:Z

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔﹳ;->ٴᵢ:Z

    iget-boolean v2, p1, Lﹶʽ/ᵔﹳ;->ٴᵢ:Z

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ᵔﹳ;->ᵔי:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lﹶʽ/ᵔﹳ;->ᵔי:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔﹳ;->ـˏ:Z

    iget-boolean v2, p1, Lﹶʽ/ᵔﹳ;->ـˏ:Z

    invoke-virtual {v0, v1, v2}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v2, p0, Lﹶʽ/ᵔﹳ;->ﹳـ:Z

    iget-boolean v3, p1, Lﹶʽ/ᵔﹳ;->ﹳـ:Z

    invoke-virtual {v0, v2, v3}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget p0, p0, Lﹶʽ/ᵔﹳ;->ˈⁱ:I

    iget p1, p1, Lﹶʽ/ᵔﹳ;->ˈⁱ:I

    invoke-virtual {v0, p0, p1}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lʼʻ/ᵢˏ;->ˑﹳ()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ⁱˊ(Lﹶʽ/ʼᐧ;)Z
    .locals 2

    .prologue
    check-cast p1, Lﹶʽ/ᵔﹳ;

    iget-boolean v0, p0, Lﹶʽ/ᵔﹳ;->ˊˋ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v1, p1, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v1, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lﹶʽ/ᵔﹳ;->ˊʻ:Lﹶʽ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lﹶʽ/ᵔﹳ;->ـˏ:Z

    iget-boolean v1, p1, Lﹶʽ/ᵔﹳ;->ـˏ:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lﹶʽ/ᵔﹳ;->ﹳـ:Z

    iget-boolean p1, p1, Lﹶʽ/ᵔﹳ;->ﹳـ:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lﹶʽ/ᵔﹳ;->ʼˈ:I

    return v0
.end method
