.class public abstract Lʼʼ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼʼ/ˈ;


# instance fields
.field public final ʼˎ:Lʼʼ/ﾞᴵ;

.field public ʽ:Lʼʼ/ﾞʻ;

.field public ˆʾ:I

.field public ˈ:I

.field public final ˑﹳ:Lʼʼ/ᵎﹶ;

.field public ᵎﹶ:Z

.field public final ᵔᵢ:Lʼʼ/ﾞᴵ;

.field public ⁱˊ:Lʾᵎ/ˈ;

.field public ﹳٴ:I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lʾᵎ/ˈ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʼʼ/ᵎﹶ;

    invoke-direct {v0, p0}, Lʼʼ/ᵎﹶ;-><init>(Lʼʼ/ˉˆ;)V

    iput-object v0, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    const/4 v0, 0x0

    iput v0, p0, Lʼʼ/ˉˆ;->ﾞᴵ:I

    iput-boolean v0, p0, Lʼʼ/ˉˆ;->ᵎﹶ:Z

    new-instance v0, Lʼʼ/ﾞᴵ;

    invoke-direct {v0, p0}, Lʼʼ/ﾞᴵ;-><init>(Lʼʼ/ˉˆ;)V

    iput-object v0, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    new-instance v0, Lʼʼ/ﾞᴵ;

    invoke-direct {v0, p0}, Lʼʼ/ﾞᴵ;-><init>(Lʼʼ/ˉˆ;)V

    iput-object v0, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    const/4 v0, 0x1

    iput v0, p0, Lʼʼ/ˉˆ;->ˆʾ:I

    iput-object p1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    return-void
.end method

.method public static ʼˎ(Lʾᵎ/ʽ;I)Lʼʼ/ﾞᴵ;
    .locals 1

    .prologue
    iget-object p0, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    if-nez p1, :cond_1

    iget-object p1, v0, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    :goto_0
    iget p0, p0, Lʾᵎ/ʽ;->ˑﹳ:I

    invoke-static {p0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p1, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    return-object p0

    :cond_3
    iget-object p0, p1, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    return-object p0
.end method

.method public static ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;
    .locals 2

    .prologue
    iget-object p0, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget p0, p0, Lʾᵎ/ʽ;->ˑﹳ:I

    invoke-static {p0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, v0, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object p0, p0, Lʼʼ/ˉʿ;->ٴﹶ:Lʼʼ/ﾞᴵ;

    return-object p0

    :cond_2
    iget-object p0, v0, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object p0, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    return-object p0

    :cond_3
    iget-object p0, v0, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget-object p0, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    return-object p0

    :cond_4
    iget-object p0, v0, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object p0, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    return-object p0

    :cond_5
    iget-object p0, v0, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget-object p0, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    return-object p0
.end method

.method public static ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V
    .locals 1

    iget-object v0, p0, Lʼʼ/ﾞᴵ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    iget-object p1, p1, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V
    .locals 2

    iget-object v0, p1, Lʼʼ/ﾞᴵ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lʼʼ/ﾞᴵ;->ﾞʻ:Ljava/util/ArrayList;

    iget-object v1, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lʼʼ/ﾞᴵ;->ᵔᵢ:I

    iput-object p4, p1, Lʼʼ/ﾞᴵ;->ʼˎ:Lʼʼ/ᵎﹶ;

    iget-object p2, p2, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ˆʾ()J
    .locals 2

    .prologue
    iget-object v0, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-boolean v1, v0, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract ˈ()V
.end method

.method public abstract ˑﹳ()V
.end method

.method public abstract ٴﹶ()Z
.end method

.method public final ᵎﹶ(II)I
    .locals 1

    .prologue
    if-nez p2, :cond_1

    iget-object p2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v0, p2, Lʾᵎ/ˈ;->ʻٴ:I

    iget p2, p2, Lʾᵎ/ˈ;->ʽﹳ:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-eq p2, p1, :cond_3

    return p2

    :cond_1
    iget-object p2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v0, p2, Lʾᵎ/ˈ;->ʼʼ:I

    iget p2, p2, Lʾᵎ/ˈ;->ʾᵎ:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-eq p2, p1, :cond_3

    return p2

    :cond_3
    return p1
.end method

.method public final ﾞʻ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V
    .locals 11

    .prologue
    invoke-static {p1}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v0

    invoke-static {p2}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    iget-boolean v2, v0, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, v0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    invoke-virtual {p1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    invoke-virtual {p2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-boolean v4, v3, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget v4, p0, Lʼʼ/ˉˆ;->ˈ:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_a

    iget v4, p0, Lʼʼ/ˉˆ;->ﹳٴ:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    if-eq v4, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v8, v4, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget v9, v8, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v9, v6, :cond_2

    iget v9, v8, Lʼʼ/ˉˆ;->ﹳٴ:I

    if-ne v9, v6, :cond_2

    iget-object v9, v4, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget v10, v9, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v10, v6, :cond_2

    iget v9, v9, Lʼʼ/ˉˆ;->ﹳٴ:I

    if-ne v9, v6, :cond_2

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    iget-object v8, v4, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    :cond_3
    iget-object v6, v8, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-boolean v8, v6, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v8, :cond_a

    iget v4, v4, Lʾᵎ/ˈ;->ᴵˑ:F

    if-ne p3, v7, :cond_4

    iget v6, v6, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_0

    :cond_4
    iget v6, v6, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    invoke-virtual {v3, v4}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v6, v4, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v6, :cond_a

    if-nez p3, :cond_6

    iget-object v6, v6, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    goto :goto_1

    :cond_6
    iget-object v6, v6, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    :goto_1
    iget-object v6, v6, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-boolean v7, v6, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v7, :cond_a

    if-nez p3, :cond_7

    iget v4, v4, Lʾᵎ/ˈ;->ـˆ:F

    goto :goto_2

    :cond_7
    iget v4, v4, Lʾᵎ/ˈ;->ᵢˏ:F

    :goto_2
    iget v6, v6, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    invoke-virtual {p0, v4, p3}, Lʼʼ/ˉˆ;->ᵎﹶ(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    goto :goto_3

    :cond_8
    iget v4, v3, Lʼʼ/ᵎﹶ;->ˉʿ:I

    invoke-virtual {p0, v4, p3}, Lʼʼ/ˉˆ;->ᵎﹶ(II)I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p2, p3}, Lʼʼ/ˉˆ;->ᵎﹶ(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    :cond_a
    :goto_3
    iget-boolean v4, v3, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    iget v4, v3, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget-object v6, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    iget-object v7, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    if-ne v4, p2, :cond_c

    invoke-virtual {v7, p1}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    invoke-virtual {v6, v2}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    return-void

    :cond_c
    if-nez p3, :cond_d

    iget-object p2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget p2, p2, Lʾᵎ/ˈ;->ˏᵢ:F

    goto :goto_4

    :cond_d
    iget-object p2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget p2, p2, Lʾᵎ/ˈ;->ᴵʼ:F

    :goto_4
    if-ne v0, v1, :cond_e

    iget p1, v0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget v2, v1, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    move p2, v5

    :cond_e
    sub-int/2addr v2, p1

    sub-int/2addr v2, v4

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float p3, v2

    mul-float/2addr p3, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {v7, p1}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    iget p1, v7, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget p2, v3, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    add-int/2addr p1, p2

    invoke-virtual {v6, p1}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public abstract ﾞᴵ()V
.end method
