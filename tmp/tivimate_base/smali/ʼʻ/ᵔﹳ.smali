.class public final Lʼʻ/ᵔﹳ;
.super Lʼʻ/ʿ;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final ʾˋ:Lˆʽ/ˑﹳ;

.field public final ᴵˊ:Lʼʻ/ʿ;


# direct methods
.method public constructor <init>(Lˆʽ/ˑﹳ;Lʼʻ/ʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼʻ/ᵔﹳ;->ʾˋ:Lˆʽ/ˑﹳ;

    iput-object p2, p0, Lʼʻ/ᵔﹳ;->ᴵˊ:Lʼʻ/ʿ;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lʼʻ/ᵔﹳ;->ʾˋ:Lˆʽ/ˑﹳ;

    invoke-interface {v0, p1}, Lˆʽ/ˑﹳ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2}, Lˆʽ/ˑﹳ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lʼʻ/ᵔﹳ;->ᴵˊ:Lʼʻ/ʿ;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʼʻ/ᵔﹳ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lʼʻ/ᵔﹳ;

    iget-object v1, p0, Lʼʻ/ᵔﹳ;->ʾˋ:Lˆʽ/ˑﹳ;

    iget-object v3, p1, Lʼʻ/ᵔﹳ;->ʾˋ:Lˆʽ/ˑﹳ;

    invoke-interface {v1, v3}, Lˆʽ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lʼʻ/ᵔﹳ;->ᴵˊ:Lʼʻ/ʿ;

    iget-object p1, p1, Lʼʻ/ᵔﹳ;->ᴵˊ:Lʼʻ/ʿ;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lʼʻ/ᵔﹳ;->ʾˋ:Lˆʽ/ˑﹳ;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lʼʻ/ᵔﹳ;->ᴵˊ:Lʼʻ/ʿ;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʼʻ/ᵔﹳ;->ᴵˊ:Lʼʻ/ʿ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʼʻ/ᵔﹳ;->ʾˋ:Lˆʽ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
