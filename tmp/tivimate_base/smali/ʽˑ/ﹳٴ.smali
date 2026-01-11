.class public final Lʽˑ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽˑ/יـ;


# instance fields
.field public final synthetic ʾˋ:Lʽˑ/ʽ;


# direct methods
.method public constructor <init>(Lʽˑ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˑ/ﹳٴ;->ʾˋ:Lʽˑ/ʽ;

    return-void
.end method


# virtual methods
.method public final ʽ(Landroid/net/Uri;Lʼٴ/ʾᵎ;Z)Z
    .locals 9

    .prologue
    iget-object p3, p0, Lʽˑ/ﹳٴ;->ʾˋ:Lʽˑ/ʽ;

    iget-object v0, p3, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    iget-object v1, p3, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p3, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    sget-object v5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, v1, Lʽˑ/ˉˆ;->ˑﹳ:Ljava/util/List;

    move v5, v2

    move v6, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽˑ/ᵔʾ;

    iget-object v7, v7, Lʽˑ/ᵔʾ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽˑ/ⁱˊ;

    if-eqz v7, :cond_0

    iget-wide v7, v7, Lʽˑ/ⁱˊ;->ˉٴ:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lᵔⁱ/ᵔᵢ;

    iget-object v3, p3, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    iget-object v3, v3, Lʽˑ/ˉˆ;->ˑﹳ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3, v6}, Lᵔⁱ/ᵔᵢ;-><init>(IIII)V

    iget-object p3, p3, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lʻᴵ/יـ;->ﹳٴ(Lᵔⁱ/ᵔᵢ;Lʼٴ/ʾᵎ;)Lʼˊ/ⁱˊ;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p3, p2, Lʼˊ/ⁱˊ;->ʾˋ:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽˑ/ⁱˊ;

    if-eqz p1, :cond_2

    iget-wide p2, p2, Lʼˊ/ⁱˊ;->ᴵˊ:J

    invoke-static {p1, p2, p3}, Lʽˑ/ⁱˊ;->ﹳٴ(Lʽˑ/ⁱˊ;J)Z

    :cond_2
    return v2
.end method

.method public final ﹳٴ()V
    .locals 1

    iget-object v0, p0, Lʽˑ/ﹳٴ;->ʾˋ:Lʽˑ/ʽ;

    iget-object v0, v0, Lʽˑ/ʽ;->ᴵᵔ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
