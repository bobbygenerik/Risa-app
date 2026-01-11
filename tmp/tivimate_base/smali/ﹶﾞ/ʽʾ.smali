.class public final Lﹶﾞ/ʽʾ;
.super Lﹶﾞ/ᵔʾ;
.source "SourceFile"


# instance fields
.field public final synthetic ˑﹳ:I

.field public final synthetic ﾞᴵ:Lﹶﾞ/ʿʽ;


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ᵎʻ;I)V
    .locals 0

    iput p3, p0, Lﹶﾞ/ʽʾ;->ˑﹳ:I

    iput-object p1, p0, Lﹶﾞ/ʽʾ;->ﾞᴵ:Lﹶﾞ/ʿʽ;

    invoke-direct {p0, p2}, Lﹶﾞ/ᵔʾ;-><init>(Lﹶﾞ/יﹳ;)V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget v0, p0, Lﹶﾞ/ʽʾ;->ˑﹳ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ʽʾ;->ﾞᴵ:Lﹶﾞ/ʿʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ʽʾ;->ﾞᴵ:Lﹶﾞ/ʿʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ﾞˏ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Inactivity, disconnecting from the service"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˎʾ()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
