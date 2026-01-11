.class public abstract Lـʾ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Schedulers"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lـʾ/ᵎﹶ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public static ⁱˊ(Lᴵˋ/ⁱˊ;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 7

    .prologue
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v0

    invoke-virtual {p1}, Lʼﾞ/ˊʻ;->ⁱˊ()V

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    iget-object v1, v0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v2, Lar/tvplayer/core/domain/ـˆ;

    const/16 v5, 0x1b

    invoke-direct {v2, v5}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    invoke-static {v1, v4, v3, v2}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    invoke-static {v0, v2, v1}, Lـʾ/ᵎﹶ;->ﹳٴ(Lˑᵎ/ʾᵎ;Lᴵˋ/ˆʾ;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lᴵˋ/ⁱˊ;->ٴﹶ:I

    iget-object v5, v0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v6, Lˑᵎ/יـ;

    invoke-direct {v6, v2}, Lˑᵎ/יـ;-><init>(I)V

    invoke-static {v5, v4, v3, v6}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    invoke-static {v0, p0, v2}, Lـʾ/ᵎﹶ;->ﹳٴ(Lˑᵎ/ʾᵎ;Lᴵˋ/ˆʾ;Ljava/util/List;)V

    if-eqz v1, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object p0, v0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v0, Lˑᵎ/ʻٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˑᵎ/ʻٴ;-><init>(I)V

    invoke-static {p0, v4, v3, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Lʼﾞ/ˊʻ;->ᵔﹳ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lʼﾞ/ˊʻ;->ﾞʻ()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lˑᵎ/ﹳᐧ;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lˑᵎ/ﹳᐧ;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lـʾ/ˑﹳ;

    invoke-interface {v1}, Lـʾ/ˑﹳ;->ʽ()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, p1}, Lـʾ/ˑﹳ;->ﹳٴ([Lˑᵎ/ﹳᐧ;)V

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lˑᵎ/ﹳᐧ;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lˑᵎ/ﹳᐧ;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lـʾ/ˑﹳ;

    invoke-interface {p2}, Lـʾ/ˑﹳ;->ʽ()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p2, p0}, Lـʾ/ˑﹳ;->ﹳٴ([Lˑᵎ/ﹳᐧ;)V

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lʼﾞ/ˊʻ;->ﾞʻ()V

    throw p0

    :cond_6
    :goto_4
    return-void
.end method

.method public static ﹳٴ(Lˑᵎ/ʾᵎ;Lᴵˋ/ˆʾ;Ljava/util/List;)V
    .locals 2

    .prologue
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lˑᵎ/ﹳᐧ;

    iget-object p2, p2, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lˑᵎ/ʾᵎ;->ﾞᴵ(Ljava/lang/String;J)I

    goto :goto_0

    :cond_0
    return-void
.end method
