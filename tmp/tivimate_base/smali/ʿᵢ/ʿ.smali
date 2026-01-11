.class public final Lʿᵢ/ʿ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lʿᵢ/ʿ;->ᴵˊ:I

    iput-object p1, p0, Lʿᵢ/ʿ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʿᵢ/ʿ;->ˈٴ:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lʿᵢ/ʿ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, Lʿᵢ/ʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʽﹳ/ᵔᵢ;

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Lʽﹳ/ᵔᵢ;->ˈ:Z

    iget-object v1, v0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lʽﹳ/ٴﹶ;->ᴵˊ:Lʽﹳ/ˆʾ;

    invoke-virtual {v1, p1}, Lʽﹳ/ᵎﹶ;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, v0, Lʽﹳ/ᵔᵢ;->ﹳٴ:Ljava/lang/Object;

    iput-object p1, v0, Lʽﹳ/ᵔᵢ;->ⁱˊ:Lʽﹳ/ٴﹶ;

    iput-object p1, v0, Lʽﹳ/ᵔᵢ;->ʽ:Lʽﹳ/ᵔʾ;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lʽﹳ/ᵔᵢ;->ⁱˊ(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lʿᵢ/ʿ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lᴵי/ᴵˊ;

    invoke-virtual {p1}, Lᴵי/ᐧᴵ;->ᴵˊ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lʽﹳ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    iget-object p1, p0, Lʿᵢ/ʿ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lʽﹳ/ˉʿ;

    invoke-virtual {p1, v0}, Lʽﹳ/ˉʿ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lʿᵢ/ʿ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lˏˆ/ﹳٴ;

    iget-object p1, p1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lʽʿ/ﾞᴵ;

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1}, Lʽʿ/ﾞᴵ;->ٴﹶ(Ljava/lang/Throwable;Z)Z

    :cond_3
    invoke-virtual {v1}, Lʽʿ/ﾞᴵ;->ʼˎ()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lʽʿ/ˉʿ;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    sget-object v2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    if-eqz p1, :cond_6

    check-cast p1, Lʿᵢ/ˋᵔ;

    iget-object p1, p1, Lʿᵢ/ˋᵔ;->ⁱˊ:Lᴵי/ᵔﹳ;

    if-nez v0, :cond_5

    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v4, "DataStore scope was cancelled before updateData could complete"

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lᴵי/יـ;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p1, v4}, Lᴵי/ᐧᴵ;->ˑٴ(Ljava/lang/Object;)Z

    move-object v3, v2

    :cond_6
    if-nez v3, :cond_3

    return-object v2

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lʿᵢ/ʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lʿᵢ/ʿ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lʽʿ/יـ;

    move-object v1, p1

    check-cast v1, Lʽʿ/ٴﹶ;

    invoke-virtual {v1, v0}, Lʽʿ/ٴﹶ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lʽʿ/ˉʿ;

    if-nez v2, :cond_7

    check-cast v1, Lʻᵢ/ʼᐧ;

    goto :goto_3

    :cond_7
    new-instance v1, Lʼˋ/ﾞᴵ;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    sget-object p1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-static {p1, v1}, Lᴵי/ʾᵎ;->יـ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽʿ/ᵔʾ;

    iget-object p1, p1, Lʽʿ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    :cond_8
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
