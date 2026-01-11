.class public final synthetic Lﹶﾞ/ٴﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ˑˆ;


# instance fields
.field public final ʾˋ:Lﹶﾞ/ᵎʻ;


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 0

    iput-object p1, p0, Lﹶﾞ/ٴﹳ;->ʾˋ:Lﹶﾞ/ᵎʻ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ()Z
    .locals 5

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ٴﹳ;->ˈ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ٴﹳ;->ʾˋ:Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v3, v3, Lﹶﾞ/ᐧᴵ;->ˉـ:Lⁱי/ʻᵎ;

    invoke-virtual {v3}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    const/4 v3, 0x0

    sget-object v4, Lﹶﾞ/ᴵᵔ;->ﹳﹳ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v3, v4}, Lﹶﾞ/ᵎﹶ;->ˈـ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public ˈ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶﾞ/ٴﹳ;->ʾˋ:Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v0, v0, Lﹶﾞ/ᐧᴵ;->ˉـ:Lⁱי/ʻᵎ;

    invoke-virtual {v0}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic ⁱˊ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lﹶﾞ/ٴﹳ;->ʾˋ:Lﹶﾞ/ᵎʻ;

    invoke-virtual {p1, p2, p3, p4}, Lﹶﾞ/ᵎʻ;->ˈ(ILjava/lang/Throwable;[B)V

    return-void
.end method

.method public ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶﾞ/ٴﹳ;->ʾˋ:Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-ne v1, v3, :cond_1

    const-string p1, "auto"

    :cond_1
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object p2, v2, Lﹶﾞ/ᐧᴵ;->ᴵˑ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    iget-object p1, v2, Lﹶﾞ/ᐧᴵ;->ˉـ:Lⁱי/ʻᵎ;

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_3
    return-void
.end method
