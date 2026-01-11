.class public final Lʽﹳ/ˉʿ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʽﹳ/ˉʿ;->ᴵˊ:I

    iput-object p2, p0, Lʽﹳ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʽﹳ/ˉʿ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    new-instance v0, Lʿᵢ/ᴵˑ;

    iget-object v1, p0, Lʽﹳ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˊʽ/ˈ;

    iget-object v1, v1, Lˊʽ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    invoke-direct {v0, v1, p1}, Lʿᵢ/ᴵˑ;-><init>(Lˈי/ᵔᵢ;Ljava/io/File;)V

    return-object v0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, Lʽﹳ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿᵢ/ˈٴ;

    iget-object v1, v0, Lʿᵢ/ˈٴ;->ˆʾ:Lʻᵢ/ʼˎ;

    if-eqz p1, :cond_0

    iget-object v0, v0, Lʿᵢ/ˈٴ;->ᵔᵢ:Lʼﾞ/ʻٴ;

    new-instance v2, Lʿᵢ/ˈʿ;

    invoke-direct {v2, p1}, Lʿᵢ/ˈʿ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lʼﾞ/ʻٴ;->ʽ(Lʿᵢ/ˈˏ;)V

    :cond_0
    invoke-virtual {v1}, Lʻᵢ/ʼˎ;->ﹳٴ()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʿᵢ/ᵔי;

    invoke-interface {p1}, Lʿᵢ/ﹳٴ;->close()V

    :cond_1
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lʽﹳ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˈˊ/ﹳᐧ;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
