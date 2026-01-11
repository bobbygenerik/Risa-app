.class public final Lʽי/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public final ʽ:I

.field public final ˈ:Lcom/bumptech/glide/ʼˎ;

.field public final ˑﹳ:Lˎᵢ/ʾᵎ;

.field public final ᵎﹶ:I

.field public final ᵔᵢ:I

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Lٴᵎ/ʼᐧ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lٴᵎ/ʼᐧ;Ljava/util/ArrayList;ILcom/bumptech/glide/ʼˎ;Lˎᵢ/ʾᵎ;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽי/ᵎﹶ;->ﹳٴ:Lٴᵎ/ʼᐧ;

    iput-object p2, p0, Lʽי/ᵎﹶ;->ⁱˊ:Ljava/util/ArrayList;

    iput p3, p0, Lʽי/ᵎﹶ;->ʽ:I

    iput-object p4, p0, Lʽי/ᵎﹶ;->ˈ:Lcom/bumptech/glide/ʼˎ;

    iput-object p5, p0, Lʽי/ᵎﹶ;->ˑﹳ:Lˎᵢ/ʾᵎ;

    iput p6, p0, Lʽי/ᵎﹶ;->ﾞᴵ:I

    iput p7, p0, Lʽי/ᵎﹶ;->ᵎﹶ:I

    iput p8, p0, Lʽי/ᵎﹶ;->ᵔᵢ:I

    return-void
.end method

.method public static ﹳٴ(Lʽי/ᵎﹶ;ILcom/bumptech/glide/ʼˎ;Lˎᵢ/ʾᵎ;I)Lʽי/ᵎﹶ;
    .locals 9

    .prologue
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lʽי/ᵎﹶ;->ʽ:I

    :cond_0
    move v3, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lʽי/ᵎﹶ;->ˈ:Lcom/bumptech/glide/ʼˎ;

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lʽי/ᵎﹶ;->ˑﹳ:Lˎᵢ/ʾᵎ;

    :cond_2
    move-object v5, p3

    iget v6, p0, Lʽי/ᵎﹶ;->ﾞᴵ:I

    iget v7, p0, Lʽי/ᵎﹶ;->ᵎﹶ:I

    iget v8, p0, Lʽי/ᵎﹶ;->ᵔᵢ:I

    new-instance v0, Lʽי/ᵎﹶ;

    iget-object v1, p0, Lʽי/ᵎﹶ;->ﹳٴ:Lٴᵎ/ʼᐧ;

    iget-object v2, p0, Lʽי/ᵎﹶ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v8}, Lʽי/ᵎﹶ;-><init>(Lٴᵎ/ʼᐧ;Ljava/util/ArrayList;ILcom/bumptech/glide/ʼˎ;Lˎᵢ/ʾᵎ;III)V

    return-object v0
.end method


# virtual methods
.method public final ⁱˊ(Lˎᵢ/ʾᵎ;)Lˎᵢ/ʽʽ;
    .locals 9

    .prologue
    iget-object v0, p0, Lʽי/ᵎﹶ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lʽי/ᵎﹶ;->ʽ:I

    if-ge v2, v1, :cond_6

    iget v1, p0, Lʽי/ᵎﹶ;->ʼˎ:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lʽי/ᵎﹶ;->ʼˎ:I

    const-string v1, " must call proceed() exactly once"

    iget-object v4, p0, Lʽי/ᵎﹶ;->ˈ:Lcom/bumptech/glide/ʼˎ;

    const-string v5, "network interceptor "

    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lٴᵎ/ʼˎ;

    invoke-interface {v6}, Lٴᵎ/ʼˎ;->ⁱˊ()Lٴᵎ/ʾᵎ;

    move-result-object v6

    iget-object v7, p1, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-interface {v6, v7}, Lٴᵎ/ʾᵎ;->ﾞʻ(Lˎᵢ/ʼᐧ;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lʽי/ᵎﹶ;->ʼˎ:I

    if-ne v6, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x3a

    invoke-static {p0, v6, v7, p1, v8}, Lʽי/ᵎﹶ;->ﹳٴ(Lʽי/ᵎﹶ;ILcom/bumptech/glide/ʼˎ;Lˎᵢ/ʾᵎ;I)Lʽי/ᵎﹶ;

    move-result-object p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˎᵢ/ᵔﹳ;

    invoke-interface {v2, p1}, Lˎᵢ/ᵔﹳ;->ﹳٴ(Lʽי/ᵎﹶ;)Lˎᵢ/ʽʽ;

    move-result-object v7

    if-eqz v7, :cond_5

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    iget p1, p1, Lʽי/ᵎﹶ;->ʼˎ:I

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-object v7

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interceptor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
