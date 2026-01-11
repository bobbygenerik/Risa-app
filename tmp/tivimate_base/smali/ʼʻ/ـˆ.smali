.class public final Lʼʻ/ـˆ;
.super Lʼʻ/ʿ;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final ʾˋ:Lcom/parse/ʼᐧ;


# direct methods
.method public constructor <init>(Lcom/parse/ʼᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼʻ/ـˆ;->ʾˋ:Lcom/parse/ʼᐧ;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lʼʻ/ـˆ;->ʾˋ:Lcom/parse/ʼᐧ;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ʼᐧ;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lʼʻ/ـˆ;

    if-eqz v0, :cond_1

    check-cast p1, Lʼʻ/ـˆ;

    iget-object v0, p0, Lʼʻ/ـˆ;->ʾˋ:Lcom/parse/ʼᐧ;

    iget-object p1, p1, Lʼʻ/ـˆ;->ʾˋ:Lcom/parse/ʼᐧ;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lʼʻ/ـˆ;->ʾˋ:Lcom/parse/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʼʻ/ـˆ;->ʾˋ:Lcom/parse/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
