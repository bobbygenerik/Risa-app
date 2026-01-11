.class public final Lˊʻ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Z

.field public final ʼᐧ:Ljava/util/ArrayList;

.field public final ʽ:Ljava/util/ArrayList;

.field public ˆʾ:Lﹳʽ/ˊʻ;

.field public final ˈ:Ljava/util/ArrayList;

.field public ˉʿ:Ljava/lang/String;

.field public final ˉˆ:Landroid/app/Notification;

.field public ˑﹳ:Ljava/lang/CharSequence;

.field public ٴﹶ:Z

.field public ᵎﹶ:Landroid/app/PendingIntent;

.field public final ᵔʾ:Z

.field public ᵔᵢ:I

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Landroid/content/Context;

.field public ﾞʻ:Landroid/os/Bundle;

.field public ﾞᴵ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˊʻ/ʼˎ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˊʻ/ʼˎ;->ʽ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˊʻ/ʼˎ;->ˈ:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊʻ/ʼˎ;->ʼˎ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lˊʻ/ʼˎ;->ٴﹶ:Z

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lˊʻ/ʼˎ;->ˉˆ:Landroid/app/Notification;

    iput-object p1, p0, Lˊʻ/ʼˎ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lˊʻ/ʼˎ;->ˉʿ:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Lˊʻ/ʼˎ;->ᵔᵢ:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˊʻ/ʼˎ;->ʼᐧ:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lˊʻ/ʼˎ;->ᵔʾ:Z

    return-void
.end method

.method public static ⁱˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final ʽ(Lﹳʽ/ˊʻ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˊʻ/ʼˎ;->ˆʾ:Lﹳʽ/ˊʻ;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lˊʻ/ʼˎ;->ˆʾ:Lﹳʽ/ˊʻ;

    iget-object v0, p1, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊʻ/ʼˎ;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lˊʻ/ʼˎ;->ʽ(Lﹳʽ/ˊʻ;)V

    :cond_0
    return-void
.end method

.method public final ﹳٴ()Landroid/app/Notification;
    .locals 6

    .prologue
    new-instance v0, Lcom/parse/ٴʼ;

    invoke-direct {v0, p0}, Lcom/parse/ٴʼ;-><init>(Lˊʻ/ʼˎ;)V

    iget-object v1, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Builder;

    iget-object v2, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˊʻ/ʼˎ;

    iget-object v3, v2, Lˊʻ/ʼˎ;->ˆʾ:Lﹳʽ/ˊʻ;

    if-eqz v3, :cond_0

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    iget-object v5, v3, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v5, 0x18

    if-lt v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    if-eqz v3, :cond_3

    iget-object v1, v2, Lˊʻ/ʼˎ;->ˆʾ:Lﹳʽ/ˊʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    if-eqz v3, :cond_4

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v2, "androidx.core.app.NotificationCompat$BigTextStyle"

    const-string v3, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method
