.class public final synthetic Lˏᐧ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Ljava/lang/Object;

.field public final synthetic ˈ:Ljava/lang/Object;

.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lˏᐧ/ﾞᴵ;->ﹳٴ:I

    iput-object p1, p0, Lˏᐧ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˏᐧ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    iput-object p3, p0, Lˏᐧ/ﾞᴵ;->ˈ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lˏᐧ/ﾞᴵ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˏᐧ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ʽ;

    iget-object v1, p0, Lˏᐧ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lˏᐧ/ﾞᴵ;->ˈ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lـʾ/ʽ;->ˑﹳ:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ʼʼ()Lˑᵎ/ᵢˏ;

    move-result-object v3

    iget-object v3, v3, Lˑᵎ/ᵢˏ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v4, Lˑᵎ/ʽ;

    const/16 v5, 0x11

    invoke-direct {v4, v5, v2}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lˑᵎ/ʾᵎ;->ˈ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˏᐧ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˏᐧ/ᵎﹶ;

    iget-object v1, p0, Lˏᐧ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lˏᐧ/ﾞᴵ;->ˈ:Ljava/lang/Object;

    check-cast v2, Lˊⁱ/ˑﹳ;

    iget-object v0, v0, Lˏᐧ/ᵎﹶ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lʻʿ/ᵔʾ;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v4, v2}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
