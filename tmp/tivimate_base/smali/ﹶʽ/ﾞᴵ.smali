.class public final Lﹶʽ/ﾞᴵ;
.super Lﹶʽ/ʼᐧ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ʼˈ:I

.field public final ˆﾞ:Z

.field public final ˈʿ:I

.field public final ˈⁱ:Z

.field public final ˉـ:Z

.field public final ˉٴ:Lﹶʽ/ˆʾ;

.field public final ˊʻ:Z

.field public final ˊˋ:I

.field public final ˋᵔ:Z

.field public final ˑٴ:I

.field public final ـˏ:I

.field public final ٴʼ:I

.field public final ٴᵢ:Ljava/lang/String;

.field public final ᴵˑ:Z

.field public final ᴵᵔ:I

.field public final ᵎˊ:I

.field public final ᵎⁱ:Z

.field public final ᵔי:I

.field public final ᵔٴ:Z

.field public final ﹳـ:I


# direct methods
.method public constructor <init>(ILʽⁱ/ـˏ;ILﹶʽ/ˆʾ;IZLﹶʽ/ˑﹳ;I)V
    .locals 7

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lﹶʽ/ʼᐧ;-><init>(ILʽⁱ/ـˏ;I)V

    iput-object p4, p0, Lﹶʽ/ﾞᴵ;->ˉٴ:Lﹶʽ/ˆʾ;

    iget-boolean p1, p4, Lﹶʽ/ˆʾ;->ʼʼ:Z

    iget-object p2, p4, Lʽⁱ/ˉـ;->ᵔʾ:Lʼʻ/ᵎⁱ;

    iget-object p3, p4, Lʽⁱ/ˉـ;->ٴﹶ:Lʼʻ/ᵎⁱ;

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const/4 p8, 0x0

    iput-boolean p8, p0, Lﹶʽ/ﾞᴵ;->ˆﾞ:Z

    iget-object v0, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v0}, Lﹶʽ/ﹳᐧ;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lﹶʽ/ﾞᴵ;->ٴᵢ:Ljava/lang/String;

    invoke-static {p5, p8}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lﹶʽ/ﾞᴵ;->ᵎⁱ:Z

    move v0, p8

    :goto_1
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3, p8}, Lﹶʽ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, p8

    move v0, v2

    :goto_2
    iput v0, p0, Lﹶʽ/ﾞᴵ;->ᵎˊ:I

    iput v1, p0, Lﹶʽ/ﾞᴵ;->ٴʼ:I

    iget-object p3, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p3, p3, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    if-eqz p3, :cond_3

    if-nez p3, :cond_3

    move p3, v2

    goto :goto_3

    :cond_3
    invoke-static {p8}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_3
    iput p3, p0, Lﹶʽ/ﾞᴵ;->ᵔי:I

    iget-object p3, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v0, p3, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, p8

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lﹶʽ/ﾞᴵ;->ᵔٴ:Z

    iget v0, p3, Lʽⁱ/ﹳᐧ;->ˑﹳ:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, p8

    :goto_6
    iput-boolean v0, p0, Lﹶʽ/ﾞᴵ;->ˋᵔ:Z

    iget-object v0, p3, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-nez v0, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_7
    move v0, v4

    goto :goto_8

    :sswitch_0
    const-string v5, "audio/iamf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v3

    goto :goto_8

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :sswitch_2
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    move v0, p8

    :goto_8
    packed-switch v0, :pswitch_data_0

    :goto_9
    move v0, p8

    goto :goto_a

    :pswitch_0
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lﹶʽ/ﾞᴵ;->ˉـ:Z

    iget v0, p3, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    iput v0, p0, Lﹶʽ/ﾞᴵ;->ˊˋ:I

    iget v5, p3, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iput v5, p0, Lﹶʽ/ﾞᴵ;->ʼˈ:I

    iget v5, p3, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    iput v5, p0, Lﹶʽ/ﾞᴵ;->ـˏ:I

    if-eq v5, v4, :cond_b

    iget v6, p4, Lʽⁱ/ˉـ;->ˉʿ:I

    if-gt v5, v6, :cond_d

    :cond_b
    if-eq v0, v4, :cond_c

    iget p4, p4, Lʽⁱ/ˉـ;->ﾞʻ:I

    if-gt v0, p4, :cond_d

    :cond_c
    invoke-virtual {p7, p3}, Lﹶʽ/ˑﹳ;->apply(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    move p3, v1

    goto :goto_b

    :cond_d
    move p3, p8

    :goto_b
    iput-boolean p3, p0, Lﹶʽ/ﾞᴵ;->ˊʻ:Z

    invoke-static {}, Lᐧˎ/ʼʼ;->ˉٴ()[Ljava/lang/String;

    move-result-object p3

    move p4, p8

    :goto_c
    array-length p7, p3

    if-ge p4, p7, :cond_f

    iget-object p7, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    aget-object v0, p3, p4

    invoke-static {p7, v0, p8}, Lﹶʽ/ﹳᐧ;->ˈ(Lʽⁱ/ﹳᐧ;Ljava/lang/String;Z)I

    move-result p7

    if-lez p7, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 p4, p4, 0x1

    goto :goto_c

    :cond_f
    move p7, p8

    move p4, v2

    :goto_d
    iput p4, p0, Lﹶʽ/ﾞᴵ;->ˈʿ:I

    iput p7, p0, Lﹶʽ/ﾞᴵ;->ˑٴ:I

    move p3, p8

    :goto_e
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    if-ge p3, p4, :cond_11

    iget-object p4, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object p4, p4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    if-eqz p4, :cond_10

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    move v2, p3

    goto :goto_f

    :cond_10
    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_11
    :goto_f
    iput v2, p0, Lﹶʽ/ﾞᴵ;->ﹳـ:I

    and-int/lit16 p2, p5, 0x180

    const/16 p3, 0x80

    if-ne p2, p3, :cond_12

    move p2, v1

    goto :goto_10

    :cond_12
    move p2, p8

    :goto_10
    iput-boolean p2, p0, Lﹶʽ/ﾞᴵ;->ˈⁱ:Z

    and-int/lit8 p2, p5, 0x40

    const/16 p3, 0x40

    if-ne p2, p3, :cond_13

    move p2, v1

    goto :goto_11

    :cond_13
    move p2, p8

    :goto_11
    iput-boolean p2, p0, Lﹶʽ/ﾞᴵ;->ᴵˑ:Z

    iget-boolean p2, p0, Lﹶʽ/ﾞᴵ;->ˊʻ:Z

    iget-object p3, p0, Lﹶʽ/ﾞᴵ;->ˉٴ:Lﹶʽ/ˆʾ;

    iget-boolean p4, p3, Lﹶʽ/ˆʾ;->ʾˋ:Z

    iget-object p7, p3, Lʽⁱ/ˉـ;->ˉˆ:Lʽⁱ/ˈⁱ;

    invoke-static {p5, p4}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p4

    if-nez p4, :cond_14

    goto :goto_12

    :cond_14
    if-nez p2, :cond_15

    iget-boolean p4, p3, Lﹶʽ/ˆʾ;->ʾᵎ:Z

    if-nez p4, :cond_15

    goto :goto_12

    :cond_15
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5, p8}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p4

    if-eqz p4, :cond_17

    if-eqz p2, :cond_17

    iget-object p2, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget p2, p2, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    if-eq p2, v4, :cond_17

    iget-boolean p2, p3, Lﹶʽ/ˆʾ;->ʽʽ:Z

    if-nez p2, :cond_16

    if-nez p6, :cond_17

    :cond_16
    and-int/2addr p1, p5

    if-eqz p1, :cond_17

    move p8, v3

    goto :goto_12

    :cond_17
    move p8, v1

    :goto_12
    iput p8, p0, Lﹶʽ/ﾞᴵ;->ᴵᵔ:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59afdf4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lﹶʽ/ﾞᴵ;

    invoke-virtual {p0, p1}, Lﹶʽ/ﾞᴵ;->ʽ(Lﹶʽ/ﾞᴵ;)I

    move-result p1

    return p1
.end method

.method public final ʽ(Lﹶʽ/ﾞᴵ;)I
    .locals 7

    .prologue
    iget-boolean v0, p0, Lﹶʽ/ﾞᴵ;->ᵎⁱ:Z

    iget-boolean v1, p0, Lﹶʽ/ﾞᴵ;->ˊʻ:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lﹶʽ/ﹳᐧ;->ﾞʻ:Lʼʻ/ʿ;

    goto :goto_0

    :cond_0
    sget-object v2, Lﹶʽ/ﹳᐧ;->ﾞʻ:Lʼʻ/ʿ;

    invoke-virtual {v2}, Lʼʻ/ʿ;->ﹳٴ()Lʼʻ/ʿ;

    move-result-object v2

    :goto_0
    iget-boolean v3, p1, Lﹶʽ/ﾞᴵ;->ᵎⁱ:Z

    iget v4, p1, Lﹶʽ/ﾞᴵ;->ـˏ:I

    sget-object v5, Lʼʻ/ᵢˏ;->ﹳٴ:Lʼʻ/ʾᵎ;

    invoke-virtual {v5, v0, v3}, Lʼʻ/ʾᵎ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v3, p0, Lﹶʽ/ﾞᴵ;->ᵎˊ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p1, Lﹶʽ/ﾞᴵ;->ᵎˊ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lʼʻ/ˉـ;->ʽʽ:Lʼʻ/ˉـ;

    invoke-virtual {v0, v3, v5, v6}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v3, p0, Lﹶʽ/ﾞᴵ;->ٴʼ:I

    iget v5, p1, Lﹶʽ/ﾞᴵ;->ٴʼ:I

    invoke-virtual {v0, v3, v5}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v3, p0, Lﹶʽ/ﾞᴵ;->ᵔי:I

    iget v5, p1, Lﹶʽ/ﾞᴵ;->ᵔי:I

    invoke-virtual {v0, v3, v5}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v3, p0, Lﹶʽ/ﾞᴵ;->ˋᵔ:Z

    iget-boolean v5, p1, Lﹶʽ/ﾞᴵ;->ˋᵔ:Z

    invoke-virtual {v0, v3, v5}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v3, p0, Lﹶʽ/ﾞᴵ;->ᵔٴ:Z

    iget-boolean v5, p1, Lﹶʽ/ﾞᴵ;->ᵔٴ:Z

    invoke-virtual {v0, v3, v5}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v3, p0, Lﹶʽ/ﾞᴵ;->ˈʿ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p1, Lﹶʽ/ﾞᴵ;->ˈʿ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v6}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v3, p0, Lﹶʽ/ﾞᴵ;->ˑٴ:I

    iget v5, p1, Lﹶʽ/ﾞᴵ;->ˑٴ:I

    invoke-virtual {v0, v3, v5}, Lʼʻ/ᵢˏ;->ﹳٴ(II)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v3, p1, Lﹶʽ/ﾞᴵ;->ˊʻ:Z

    invoke-virtual {v0, v1, v3}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ﾞᴵ;->ﹳـ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lﹶʽ/ﾞᴵ;->ﹳـ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v6}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-object v1, p0, Lﹶʽ/ﾞᴵ;->ˉٴ:Lﹶʽ/ˆʾ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lﹶʽ/ﾞᴵ;->ˈⁱ:Z

    iget-boolean v3, p1, Lﹶʽ/ﾞᴵ;->ˈⁱ:Z

    invoke-virtual {v0, v1, v3}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ﾞᴵ;->ᴵˑ:Z

    iget-boolean v3, p1, Lﹶʽ/ﾞᴵ;->ᴵˑ:Z

    invoke-virtual {v0, v1, v3}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ﾞᴵ;->ˉـ:Z

    iget-boolean v3, p1, Lﹶʽ/ﾞᴵ;->ˉـ:Z

    invoke-virtual {v0, v1, v3}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ﾞᴵ;->ˊˋ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lﹶʽ/ﾞᴵ;->ˊˋ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget v1, p0, Lﹶʽ/ﾞᴵ;->ʼˈ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lﹶʽ/ﾞᴵ;->ʼˈ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-object v1, p0, Lﹶʽ/ﾞᴵ;->ٴᵢ:Ljava/lang/String;

    iget-object p1, p1, Lﹶʽ/ﾞᴵ;->ٴᵢ:Ljava/lang/String;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lﹶʽ/ﾞᴵ;->ـˏ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lʼʻ/ᵢˏ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lʼʻ/ᵢˏ;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lʼʻ/ᵢˏ;->ˑﹳ()I

    move-result p1

    return p1
.end method

.method public final ⁱˊ(Lﹶʽ/ʼᐧ;)Z
    .locals 5

    .prologue
    check-cast p1, Lﹶʽ/ﾞᴵ;

    iget-object v0, p1, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget-object v1, p0, Lﹶʽ/ﾞᴵ;->ˉٴ:Lﹶʽ/ˆʾ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lﹶʽ/ʼᐧ;->ˈٴ:Lʽⁱ/ﹳᐧ;

    iget v2, v1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v4, v0, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-ne v2, v4, :cond_1

    iget-boolean v2, p0, Lﹶʽ/ﾞᴵ;->ˆﾞ:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v4, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v1, v1, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-eq v1, v3, :cond_1

    iget v0, v0, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lﹶʽ/ﾞᴵ;->ˈⁱ:Z

    iget-boolean v1, p1, Lﹶʽ/ﾞᴵ;->ˈⁱ:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lﹶʽ/ﾞᴵ;->ᴵˑ:Z

    iget-boolean p1, p1, Lﹶʽ/ﾞᴵ;->ᴵˑ:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lﹶʽ/ﾞᴵ;->ᴵᵔ:I

    return v0
.end method
