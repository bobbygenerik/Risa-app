.class public final Lʽᴵ/ʽﹳ;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lʽᴵ/ـˆ;


# direct methods
.method public synthetic constructor <init>(Lʽᴵ/ـˆ;I)V
    .locals 0

    iput p2, p0, Lʽᴵ/ʽﹳ;->ʾˋ:I

    iput-object p1, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    iget v0, p0, Lʽᴵ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    invoke-virtual {v0}, Lʽᴵ/ـˆ;->clear()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    invoke-virtual {v0}, Lʽᴵ/ـˆ;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    iget v0, p0, Lʽᴵ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    invoke-virtual {v0, p1}, Lʽᴵ/ـˆ;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Lʽᴵ/ـˆ;->ﹳٴ(Ljava/lang/Object;Z)Lʽᴵ/ʻٴ;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v2, p1, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move-object v3, v0

    :cond_2
    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    iget v0, p0, Lʽᴵ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʽᴵ/ˏי;

    iget-object v1, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lʽᴵ/ˏי;-><init>(Lʽᴵ/ـˆ;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lʽᴵ/ˏי;

    iget-object v1, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lʽᴵ/ˏי;-><init>(Lʽᴵ/ـˆ;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    iget v0, p0, Lʽᴵ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object v1, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v1, p1, v0}, Lʽᴵ/ـˆ;->ﹳٴ(Ljava/lang/Object;Z)Lʽᴵ/ʻٴ;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2, p1}, Lʽᴵ/ـˆ;->ʽ(Lʽᴵ/ʻٴ;Z)V

    :cond_1
    if-eqz v2, :cond_2

    move v0, p1

    :cond_2
    return v0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v2, v0, v1}, Lʽᴵ/ـˆ;->ﹳٴ(Ljava/lang/Object;Z)Lʽᴵ/ʻٴ;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_4
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    iget-object v4, v0, Lʽᴵ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v4, p1, :cond_5

    if-eqz v4, :cond_6

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move-object v3, v0

    :cond_6
    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v2, v3, v1}, Lʽᴵ/ـˆ;->ʽ(Lʽᴵ/ʻٴ;Z)V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .prologue
    iget v0, p0, Lʽᴵ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    iget v0, v0, Lʽᴵ/ـˆ;->ˈٴ:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lʽᴵ/ʽﹳ;->ᴵˊ:Lʽᴵ/ـˆ;

    iget v0, v0, Lʽᴵ/ـˆ;->ˈٴ:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
