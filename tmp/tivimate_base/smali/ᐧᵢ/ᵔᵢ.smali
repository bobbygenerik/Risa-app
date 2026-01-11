.class public final Lᐧᵢ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ᵎﹶ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Lᐧᵢ/ʼˎ;


# direct methods
.method public synthetic constructor <init>(Lᐧᵢ/ʼˎ;I)V
    .locals 0

    iput p2, p0, Lᐧᵢ/ᵔᵢ;->ʾˋ:I

    iput-object p1, p0, Lᐧᵢ/ᵔᵢ;->ᴵˊ:Lᐧᵢ/ʼˎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧᵢ/ˈ;Lᐧᵢ/ʼˈ;)V
    .locals 1

    .prologue
    iget p1, p0, Lᐧᵢ/ᵔᵢ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lᐧᵢ/ᵔᵢ;->ᴵˊ:Lᐧᵢ/ʼˎ;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object p1, p2, Lᐧᵢ/ʼˈ;->ﹳٴ:Lˎᵢ/ʽʽ;

    iget-boolean p1, p1, Lˎᵢ/ʽʽ;->ˈʿ:Z

    iget-object v0, p0, Lᐧᵢ/ᵔᵢ;->ᴵˊ:Lᐧᵢ/ʼˎ;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lᐧᵢ/ʼˈ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lᐧᵢ/ʼˈ;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    iget v0, p0, Lᐧᵢ/ᵔᵢ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧᵢ/ᵔᵢ;->ᴵˊ:Lᐧᵢ/ʼˎ;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lᐧᵢ/ᵔᵢ;->ᴵˊ:Lᐧᵢ/ʼˎ;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
