.class public final Lﹶﾞ/ᴵʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lﹶﾞ/ᵎʻ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵎʿ;Lﹶﾞ/ᵎʻ;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lﹶﾞ/ᴵʼ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵢי;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹶﾞ/ᴵʼ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iput-object p1, p0, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Z
    .locals 5

    .prologue
    iget v0, p0, Lﹶﾞ/ᴵʼ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ﹳـ;->ˎˉ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v2}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    invoke-virtual {v2, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    const-string v3, "com.android.vending"

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Lˑˊ/ⁱˊ;->ﹳٴ(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "Failed to retrieve Play Store version for Install Referrer"

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
