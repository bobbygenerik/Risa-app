.class public Lˊʼ/ʼˎ;
.super Lˊʼ/ˈ;
.source "SourceFile"

# interfaces
.implements Lˊʼ/ᵔᵢ;
.implements Lᐧˆ/ﹳٴ;
.implements Lʻᵢ/ﹳٴ;


# instance fields
.field public final ˉٴ:I

.field public final ٴᵢ:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    sget-object v2, Lˊʼ/ʽ;->ʾˋ:Lˊʼ/ʽ;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lˊʼ/ʼˎ;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/4 p7, 0x1

    and-int/2addr p6, p7

    const/4 v0, 0x0

    if-ne p6, p7, :cond_0

    move v6, p7

    :goto_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    goto :goto_1

    :cond_0
    move v6, v0

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v6}, Lˊʼ/ˈ;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, v1, Lˊʼ/ʼˎ;->ٴᵢ:I

    iput v0, v1, Lˊʼ/ʼˎ;->ˉٴ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lˊʼ/ʼˎ;

    if-eqz v0, :cond_1

    check-cast p1, Lˊʼ/ʼˎ;

    iget-object v0, p0, Lˊʼ/ˈ;->ˈٴ:Ljava/lang/String;

    iget-object v1, p1, Lˊʼ/ˈ;->ˈٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lˊʼ/ˈ;->ᴵᵔ:Ljava/lang/String;

    iget-object v1, p1, Lˊʼ/ˈ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lˊʼ/ʼˎ;->ˉٴ:I

    iget v1, p1, Lˊʼ/ʼˎ;->ˉٴ:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lˊʼ/ʼˎ;->ٴᵢ:I

    iget v1, p1, Lˊʼ/ʼˎ;->ٴᵢ:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lˊʼ/ˈ;->ᴵˊ:Ljava/lang/Object;

    iget-object v1, p1, Lˊʼ/ˈ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˊʼ/ˈ;->ˈ()Lˊʼ/ˑﹳ;

    move-result-object v0

    invoke-virtual {p1}, Lˊʼ/ˈ;->ˈ()Lˊʼ/ˑﹳ;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of v0, p1, Lˊʼ/ʼˎ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lˊʼ/ˈ;->ʾˋ:Lᐧˆ/ﹳٴ;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lˊʼ/ʼˎ;->ﹳٴ()Lᐧˆ/ﹳٴ;

    iput-object p0, p0, Lˊʼ/ˈ;->ʾˋ:Lᐧˆ/ﹳٴ;

    move-object v0, p0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lˊʼ/ˈ;->ˈ()Lˊʼ/ˑﹳ;

    invoke-virtual {p0}, Lˊʼ/ˈ;->ˈ()Lˊʼ/ˑﹳ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˊʼ/ˈ;->ˈٴ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lˊʼ/ˈ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lˊʼ/ˈ;->ʾˋ:Lᐧˆ/ﹳٴ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lˊʼ/ʼˎ;->ﹳٴ()Lᐧˆ/ﹳٴ;

    iput-object p0, p0, Lˊʼ/ˈ;->ʾˋ:Lᐧˆ/ﹳٴ;

    move-object v0, p0

    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "<init>"

    iget-object v1, p0, Lˊʼ/ˈ;->ˈٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "constructor (Kotlin reflection is not available)"

    return-object v0

    :cond_2
    const-string v0, "function "

    const-string v2, " (Kotlin reflection is not available)"

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()I
    .locals 1

    iget v0, p0, Lˊʼ/ʼˎ;->ٴᵢ:I

    return v0
.end method

.method public final ﹳٴ()Lᐧˆ/ﹳٴ;
    .locals 1

    sget-object v0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
