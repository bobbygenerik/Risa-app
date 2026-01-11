.class public Lˊʼ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊʼ/ᵔᵢ;
.implements Ljava/io/Serializable;


# instance fields
.field public final ʽʽ:Ljava/lang/String;

.field public final ʾˋ:Ljava/lang/Object;

.field public final ˈٴ:Ljava/lang/String;

.field public final ˊʻ:I

.field public final ٴᵢ:I

.field public final ᴵˊ:Ljava/lang/Class;

.field public final ᴵᵔ:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˊʼ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    iput-object p3, p0, Lˊʼ/ﹳٴ;->ᴵˊ:Ljava/lang/Class;

    iput-object p4, p0, Lˊʼ/ﹳٴ;->ʽʽ:Ljava/lang/String;

    iput-object p5, p0, Lˊʼ/ﹳٴ;->ˈٴ:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lˊʼ/ﹳٴ;->ᴵᵔ:Z

    iput p1, p0, Lˊʼ/ﹳٴ;->ˊʻ:I

    shr-int/lit8 p1, p6, 0x1

    iput p1, p0, Lˊʼ/ﹳٴ;->ٴᵢ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lˊʼ/ﹳٴ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lˊʼ/ﹳٴ;

    iget-boolean v0, p0, Lˊʼ/ﹳٴ;->ᴵᵔ:Z

    iget-boolean v1, p1, Lˊʼ/ﹳٴ;->ᴵᵔ:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lˊʼ/ﹳٴ;->ˊʻ:I

    iget v1, p1, Lˊʼ/ﹳٴ;->ˊʻ:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lˊʼ/ﹳٴ;->ٴᵢ:I

    iget v1, p1, Lˊʼ/ﹳٴ;->ٴᵢ:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lˊʼ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    iget-object v1, p1, Lˊʼ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˊʼ/ﹳٴ;->ᴵˊ:Ljava/lang/Class;

    iget-object v1, p1, Lˊʼ/ﹳٴ;->ᴵˊ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˊʼ/ﹳٴ;->ʽʽ:Ljava/lang/String;

    iget-object v1, p1, Lˊʼ/ﹳٴ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˊʼ/ﹳٴ;->ˈٴ:Ljava/lang/String;

    iget-object p1, p1, Lˊʼ/ﹳٴ;->ˈٴ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-object v0, p0, Lˊʼ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˊʼ/ﹳٴ;->ᴵˊ:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lˊʼ/ﹳٴ;->ʽʽ:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lˊʼ/ﹳٴ;->ˈٴ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lˊʼ/ﹳٴ;->ᴵᵔ:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˊʼ/ﹳٴ;->ˊʻ:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lˊʼ/ﹳٴ;->ٴᵢ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lˊʼ/ʻٴ;->ﹳٴ(Lˊʼ/ᵔᵢ;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()I
    .locals 1

    iget v0, p0, Lˊʼ/ﹳٴ;->ˊʻ:I

    return v0
.end method
