.class public final Lﹶﾞ/ˏⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Z

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Lﹶﾞ/ʿʽ;

.field public final synthetic ᴵˊ:Lﹶﾞ/ʻᐧ;

.field public final synthetic ᴵᵔ:Lᵎˆ/ﹳٴ;


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ʻᐧ;ZLᵎˆ/ﹳٴ;I)V
    .locals 0

    iput p5, p0, Lﹶﾞ/ˏⁱ;->ʾˋ:I

    iput-object p2, p0, Lﹶﾞ/ˏⁱ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    iput-boolean p3, p0, Lﹶﾞ/ˏⁱ;->ʽʽ:Z

    iput-object p4, p0, Lﹶﾞ/ˏⁱ;->ᴵᵔ:Lᵎˆ/ﹳٴ;

    iput-object p1, p0, Lﹶﾞ/ˏⁱ;->ˈٴ:Lﹶﾞ/ʿʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ʻᐧ;ZLﹶﾞ/ˑﹳ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lﹶﾞ/ˏⁱ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ˏⁱ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    iput-boolean p3, p0, Lﹶﾞ/ˏⁱ;->ʽʽ:Z

    iput-object p4, p0, Lﹶﾞ/ˏⁱ;->ᴵᵔ:Lᵎˆ/ﹳٴ;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˏⁱ;->ˈٴ:Lﹶﾞ/ʿʽ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    iget v0, p0, Lﹶﾞ/ˏⁱ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ˏⁱ;->ˈٴ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    if-nez v1, :cond_0

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lﹶﾞ/ˏⁱ;->ʽʽ:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lﹶﾞ/ˏⁱ;->ᴵᵔ:Lᵎˆ/ﹳٴ;

    check-cast v2, Lﹶﾞ/ˑﹳ;

    :goto_0
    iget-object v3, p0, Lﹶﾞ/ˏⁱ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-virtual {v0, v1, v2, v3}, Lﹶﾞ/ʿʽ;->ˊˊ(Lﹶﾞ/ˉٴ;Lᵎˆ/ﹳٴ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˏⁱ;->ˈٴ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    if-nez v1, :cond_2

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-boolean v2, p0, Lﹶﾞ/ˏⁱ;->ʽʽ:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lﹶﾞ/ˏⁱ;->ᴵᵔ:Lᵎˆ/ﹳٴ;

    check-cast v2, Lﹶﾞ/ˏי;

    :goto_2
    iget-object v3, p0, Lﹶﾞ/ˏⁱ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-virtual {v0, v1, v2, v3}, Lﹶﾞ/ʿʽ;->ˊˊ(Lﹶﾞ/ˉٴ;Lᵎˆ/ﹳٴ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V

    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lﹶﾞ/ˏⁱ;->ˈٴ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    if-nez v1, :cond_4

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Discarding data. Failed to set user property"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    iget-boolean v2, p0, Lﹶﾞ/ˏⁱ;->ʽʽ:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lﹶﾞ/ˏⁱ;->ᴵᵔ:Lᵎˆ/ﹳٴ;

    check-cast v2, Lﹶﾞ/ʿˎ;

    :goto_4
    iget-object v3, p0, Lﹶﾞ/ˏⁱ;->ᴵˊ:Lﹶﾞ/ʻᐧ;

    invoke-virtual {v0, v1, v2, v3}, Lﹶﾞ/ʿʽ;->ˊˊ(Lﹶﾞ/ˉٴ;Lᵎˆ/ﹳٴ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
