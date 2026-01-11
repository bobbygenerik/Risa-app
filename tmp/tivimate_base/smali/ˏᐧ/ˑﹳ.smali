.class public final synthetic Lˏᐧ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Runnable;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Lˊⁱ/ˑﹳ;

.field public final synthetic ᴵˊ:Lˏᐧ/ᵎﹶ;


# direct methods
.method public synthetic constructor <init>(Lˏᐧ/ᵎﹶ;Ljava/lang/Runnable;Lˊⁱ/ˑﹳ;I)V
    .locals 0

    iput p4, p0, Lˏᐧ/ˑﹳ;->ʾˋ:I

    iput-object p1, p0, Lˏᐧ/ˑﹳ;->ᴵˊ:Lˏᐧ/ᵎﹶ;

    iput-object p2, p0, Lˏᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Runnable;

    iput-object p3, p0, Lˏᐧ/ˑﹳ;->ˈٴ:Lˊⁱ/ˑﹳ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    iget v0, p0, Lˏᐧ/ˑﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˏᐧ/ˑﹳ;->ᴵˊ:Lˏᐧ/ᵎﹶ;

    iget-object v0, v0, Lˏᐧ/ᵎﹶ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lˏᐧ/ⁱˊ;

    const/4 v2, 0x1

    iget-object v3, p0, Lˏᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Runnable;

    iget-object v4, p0, Lˏᐧ/ˑﹳ;->ˈٴ:Lˊⁱ/ˑﹳ;

    invoke-direct {v1, v3, v4, v2}, Lˏᐧ/ⁱˊ;-><init>(Ljava/lang/Runnable;Lˊⁱ/ˑﹳ;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˏᐧ/ˑﹳ;->ᴵˊ:Lˏᐧ/ᵎﹶ;

    iget-object v0, v0, Lˏᐧ/ᵎﹶ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lˏᐧ/ⁱˊ;

    const/4 v2, 0x2

    iget-object v3, p0, Lˏᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Runnable;

    iget-object v4, p0, Lˏᐧ/ˑﹳ;->ˈٴ:Lˊⁱ/ˑﹳ;

    invoke-direct {v1, v3, v4, v2}, Lˏᐧ/ⁱˊ;-><init>(Ljava/lang/Runnable;Lˊⁱ/ˑﹳ;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lˏᐧ/ˑﹳ;->ᴵˊ:Lˏᐧ/ᵎﹶ;

    iget-object v0, v0, Lˏᐧ/ᵎﹶ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lˏᐧ/ⁱˊ;

    const/4 v2, 0x0

    iget-object v3, p0, Lˏᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Runnable;

    iget-object v4, p0, Lˏᐧ/ˑﹳ;->ˈٴ:Lˊⁱ/ˑﹳ;

    invoke-direct {v1, v3, v4, v2}, Lˏᐧ/ⁱˊ;-><init>(Ljava/lang/Runnable;Lˊⁱ/ˑﹳ;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
