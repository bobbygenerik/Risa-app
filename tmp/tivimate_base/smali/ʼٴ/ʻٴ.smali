.class public final synthetic Lʼٴ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑٴ/ﹳٴ;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʼٴ/ʻٴ;->ﹳٴ:I

    iput-object p2, p0, Lʼٴ/ʻٴ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget v0, p0, Lʼٴ/ʻٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lᵔٴ/ﾞᴵ;

    sget-object v0, Lᵔٴ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lᵔٴ/ᵎﹶ;->ˈ:Lיـ/ﹳᐧ;

    iget-object v2, p0, Lʼٴ/ʻٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lʼٴ/ʻٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑٴ/ﹳٴ;

    invoke-interface {v1, p1}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    check-cast p1, Lᵔٴ/ﾞᴵ;

    if-nez p1, :cond_2

    new-instance p1, Lᵔٴ/ﾞᴵ;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lᵔٴ/ﾞᴵ;-><init>(I)V

    :cond_2
    iget-object v0, p0, Lʼٴ/ʻٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎˊ;

    invoke-virtual {v0, p1}, Lˑʼ/ᵎˊ;->ˈʿ(Lᵔٴ/ﾞᴵ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʼٴ/ʻٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/data/api/parse/ˈ;

    check-cast p1, Lʼٴ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    return-void

    :pswitch_2
    check-cast p1, Lʼٴ/ﾞᴵ;

    new-instance v0, Lʼٴ/ʼᐧ;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lʼٴ/ʼᐧ;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lʼٴ/ʻٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ﾞʻ;

    invoke-interface {v1, p1, v0}, Lʼٴ/ﾞʻ;->ﹳٴ(Lʼٴ/ﾞᴵ;Lʼٴ/ʼᐧ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
