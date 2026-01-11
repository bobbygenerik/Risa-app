.class public final Lˈـ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lʽⁱ/ﹳᐧ;

.field public final ˈ:Lʼʻ/ᵔי;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(Lʽⁱ/ﹳᐧ;IILʼʻ/ᴵʼ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lˈـ/ﾞʻ;->ﹳٴ:I

    iput p3, p0, Lˈـ/ﾞʻ;->ⁱˊ:I

    iput-object p1, p0, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-static {p4}, Lʼʻ/ᵔי;->ﹳٴ(Ljava/util/Map;)Lʼʻ/ᵔי;

    move-result-object p1

    iput-object p1, p0, Lˈـ/ﾞʻ;->ˈ:Lʼʻ/ᵔי;

    iput-object p5, p0, Lˈـ/ﾞʻ;->ˑﹳ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lˈـ/ﾞʻ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˈـ/ﾞʻ;

    iget v2, p0, Lˈـ/ﾞʻ;->ﹳٴ:I

    iget v3, p1, Lˈـ/ﾞʻ;->ﹳٴ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lˈـ/ﾞʻ;->ⁱˊ:I

    iget v3, p1, Lˈـ/ﾞʻ;->ⁱˊ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget-object v3, p1, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2, v3}, Lʽⁱ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lˈـ/ﾞʻ;->ˈ:Lʼʻ/ᵔי;

    iget-object v3, p0, Lˈـ/ﾞʻ;->ˈ:Lʼʻ/ᵔי;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lʼʻ/ﹳᐧ;->ﾞᴵ(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˈـ/ﾞʻ;->ˑﹳ:Ljava/lang/String;

    iget-object p1, p1, Lˈـ/ﾞʻ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0xd9

    iget v1, p0, Lˈـ/ﾞʻ;->ﹳٴ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˈـ/ﾞʻ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1}, Lʽⁱ/ﹳᐧ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lˈـ/ﾞʻ;->ˈ:Lʼʻ/ᵔי;

    invoke-virtual {v0}, Lʼʻ/ᵔי;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˈـ/ﾞʻ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
