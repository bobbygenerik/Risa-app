.class public final Lﹶﾞ/ᵢﹳ;
.super Lﹶﾞ/ˎᐧ;
.source "SourceFile"


# static fields
.field public static final ٴʼ:[Ljava/lang/String;

.field public static final ᵎⁱ:[Ljava/lang/String;


# instance fields
.field public ʽʽ:Ljava/security/SecureRandom;

.field public final ˈٴ:Ljava/util/concurrent/atomic/AtomicLong;

.field public ˉٴ:Ljava/lang/Integer;

.field public ˊʻ:Lﾞי/ﹳٴ;

.field public ٴᵢ:Ljava/lang/Boolean;

.field public ᴵᵔ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "google_"

    const-string v1, "ga_"

    const-string v2, "firebase_"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﹶﾞ/ᵢﹳ;->ᵎⁱ:[Ljava/lang/String;

    const-string v0, "_err"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﹶﾞ/ᵢﹳ;->ٴʼ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 2

    invoke-direct {p0, p1}, Lﹶﾞ/ˎᐧ;-><init>(Lﹶﾞ/ᵎʻ;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lﹶﾞ/ᵢﹳ;->ˉٴ:Ljava/lang/Integer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lﹶﾞ/ᵢﹳ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static ʾˏ(Lﹶﾞ/ﹶʽ;Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p2, p0, Lﹶﾞ/ﹶʽ;->ﹳٴ:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lﹶﾞ/ﹶʽ;->ⁱˊ:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_2
    iget-wide v1, p0, Lﹶﾞ/ﹶʽ;->ʽ:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    if-nez p0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static ʿʽ(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .prologue
    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static ˆˑ(Ljava/lang/String;)Z
    .locals 2

    .prologue
    sget-object v0, Lﹶﾞ/ᴵᵔ;->י:Lﹶﾞ/ˈٴ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ˈʻ(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ˊˊ([B)J
    .locals 8

    .prologue
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    array-length v0, p0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-ltz v0, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-lt v0, v4, :cond_0

    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static ˊﹳ()I
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const v0, 0xf4240

    invoke-static {v0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ˊﾞ(Landroid/content/Context;)Z
    .locals 2

    .prologue
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {p0, v0}, Lﹶﾞ/ᵢﹳ;->ـʻ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-static {p0, v0}, Lﹶﾞ/ᵢﹳ;->ـʻ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ˎᵎ(Landroid/content/Context;)Z
    .locals 4

    .prologue
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static יˉ(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-le v0, p0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static יי(Ljava/lang/String;)Z
    .locals 3

    .prologue
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ـʻ(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static final ـˑ(ILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "_err"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ٴʿ(Lﹶﾞ/יˑ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, v0}, Lﹶﾞ/ᵢﹳ;->ـˑ(ILandroid/os/Bundle;)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/4 p3, 0x7

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    :cond_1
    int-to-long p2, p5

    const-string p4, "_el"

    invoke-virtual {v0, p4, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const-string p2, "_err"

    invoke-interface {p0, p1, p2, v0}, Lﹶﾞ/יˑ;->ʽ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static ᵢʻ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ⁱʾ(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶﾞ/ˑﹳ;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ᴵˊ:Ljava/lang/String;

    const-string v4, "origin"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v1, Lﹶﾞ/ˑﹳ;->ˈٴ:J

    const-string v5, "creation_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-object v3, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-virtual {v3}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lﹶﾞ/ʻᴵ;->ʽ(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget-boolean v3, v1, Lﹶﾞ/ˑﹳ;->ᴵᵔ:Z

    const-string v4, "active"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ˊʻ:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "trigger_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ٴᵢ:Lﹶﾞ/ˏי;

    if-eqz v3, :cond_2

    const-string v4, "timed_out_event_name"

    iget-object v5, v3, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    if-eqz v3, :cond_2

    const-string v4, "timed_out_event_params"

    invoke-virtual {v3}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-wide v3, v1, Lﹶﾞ/ˑﹳ;->ˉٴ:J

    const-string v5, "trigger_timeout"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ᵎⁱ:Lﹶﾞ/ˏי;

    if-eqz v3, :cond_3

    const-string v4, "triggered_event_name"

    iget-object v5, v3, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    if-eqz v3, :cond_3

    const-string v4, "triggered_event_params"

    invoke-virtual {v3}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v3, v1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    iget-wide v3, v3, Lﹶﾞ/ʿˎ;->ʽʽ:J

    const-string v5, "triggered_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v3, v1, Lﹶﾞ/ˑﹳ;->ٴʼ:J

    const-string v5, "time_to_live"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v1, Lﹶﾞ/ˑﹳ;->ᵎˊ:Lﹶﾞ/ˏי;

    if-eqz v1, :cond_4

    const-string v3, "expired_event_name"

    iget-object v4, v1, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    if-eqz v1, :cond_4

    const-string v3, "expired_event_params"

    invoke-virtual {v1}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public static ﾞˊ(Landroid/os/Parcelable;)[B
    .locals 2

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static ﾞˏ()Ljava/security/MessageDigest;
    .locals 2

    .prologue
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final ʻʻ(Ljava/lang/String;)I
    .locals 3

    .prologue
    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lﹶﾞ/ᵢﹳ;->ᐧⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lﹶﾞ/ᵢﹳ;->ʻᐧ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0, p1}, Lﹶﾞ/ᵢﹳ;->ˋ(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ʻʼ(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lﹶﾞ/ˏי;
    .locals 6

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lﹶﾞ/ᵢﹳ;->ᵢᵎ(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p2, "_o"

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lﹶﾞ/ᵢﹳ;->ˎʾ(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p6, :cond_2

    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢﹳ;->ˆˎ(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :cond_2
    invoke-static {p2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v0, Lﹶﾞ/ˏי;

    new-instance v2, Lﹶﾞ/יـ;

    invoke-direct {v2, p2}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    return-object v0

    :cond_3
    move-object v1, p1

    iget-object p1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p2, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {p1, v1}, Lﹶﾞ/ˑٴ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional property event name"

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final ʻˆ(Lcom/google/android/gms/internal/measurement/ᵔٴ;[B)V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/ᵔٴ;->ᵔﹳ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ʻᐧ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    sget-object v3, Lﹶﾞ/ᵢﹳ;->ᵎⁱ:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string p3, "Name starts with reserved prefix. Type, name"

    invoke-virtual {p2, p1, p4, p3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-static {p4, p2}, Lﹶﾞ/ᵢﹳ;->ʿʽ(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-static {p4, p3}, Lﹶﾞ/ᵢﹳ;->ʿʽ(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string p3, "Name is reserved. Type, name"

    invoke-virtual {p2, p1, p4, p3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final ʼᵎ(Ljava/lang/String;)I
    .locals 3

    .prologue
    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lﹶﾞ/ᵢﹳ;->ᵢﹳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lﹶﾞ/ᵢﹳ;->ʻᐧ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0, p1}, Lﹶﾞ/ᵢﹳ;->ˋ(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ʼᵢ(Ljava/lang/String;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const-string v1, "^1:\\d+:android:[a-f0-9]+$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    invoke-static {p1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p1

    const-string v1, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    invoke-virtual {v0, p1, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    invoke-virtual {p1, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return v2
.end method

.method public final ʼﾞ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-nez v4, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lﹶﾞ/ᵎʻ;

    iget-object v2, v8, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v9, v8, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    iget-object v10, v8, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const v11, 0xdc64e60

    invoke-virtual {v2, v11}, Lﹶﾞ/ᵢﹳ;->ˆʻ(I)Z

    move-result v2

    const/4 v13, 0x1

    if-eq v13, v2, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x23

    move v14, v2

    :goto_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    :goto_2
    if-nez p5, :cond_4

    invoke-virtual {v0, v2}, Lﹶﾞ/ᵢﹳ;->ʼᵎ(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Lﹶﾞ/ᵢﹳ;->ʻʻ(Ljava/lang/String;)I

    move-result v3

    :cond_5
    :goto_4
    const/4 v6, 0x0

    if-eqz v3, :cond_7

    const/4 v7, 0x3

    if-ne v3, v7, :cond_6

    move-object v6, v2

    :cond_6
    invoke-virtual {v0, v4, v3, v2, v6}, Lﹶﾞ/ᵢﹳ;->ᵢˋ(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object/from16 v12, p2

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lﹶﾞ/ᵢﹳ;->ˈʻ(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v9, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v7, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    move-object/from16 v12, p2

    invoke-virtual {v3, v7, v1, v12, v2}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x16

    move-object v13, v6

    goto :goto_5

    :cond_8
    move-object/from16 v12, p2

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x0

    move-object v13, v6

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lﹶﾞ/ᵢﹳ;->ﾞˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v3

    :goto_5
    if-eqz v3, :cond_9

    const-string v5, "_ev"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v2, v5}, Lﹶﾞ/ᵢﹳ;->ᵢˋ(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    invoke-static {v2}, Lﹶﾞ/ᵢﹳ;->יי(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lﹶﾞ/ʻᴵ;->ᵔᵢ:[Ljava/lang/String;

    invoke-static {v2, v3}, Lﹶﾞ/ᵢﹳ;->ʿʽ(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v0, v11}, Lﹶﾞ/ᵢﹳ;->ˆʻ(I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v9, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v10, v1}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v4}, Lﹶﾞ/ˑٴ;->ˑﹳ(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Item array not supported on client\'s version of Google Play Services (Android Only)"

    invoke-virtual {v5, v6, v7, v13}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x17

    invoke-static {v5, v4}, Lﹶﾞ/ᵢﹳ;->ـˑ(ILandroid/os/Bundle;)Z

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    if-le v3, v14, :cond_d

    iget-object v5, v8, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v6, Lﹶﾞ/ᴵᵔ;->ˊﾞ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v13, v6}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v17, :cond_c

    :cond_b
    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v9, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x37

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Item can\'t contain more than "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " item-scoped custom params"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v1}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v4}, Lﹶﾞ/ˑٴ;->ˑﹳ(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v7, v13, v6}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    const/16 v5, 0x1c

    invoke-static {v5, v4}, Lﹶﾞ/ᵢﹳ;->ـˑ(ILandroid/os/Bundle;)Z

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object/from16 v5, p4

    move/from16 v16, v3

    const/4 v13, 0x1

    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_6
    move-object/from16 v5, p4

    move/from16 v16, v3

    :goto_7
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_8
    move-object/from16 v5, p4

    goto :goto_7

    :cond_f
    :goto_9
    return-void
.end method

.method public final ʽʾ()J
    .locals 12

    .prologue
    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v1

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->ﾞˋ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lﹶﾞ/ᵢﹳ;->ˆˑ(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    if-ge v1, v5, :cond_1

    const-wide/16 v5, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v5}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    const-wide/16 v5, 0x8

    goto :goto_0

    :cond_2
    invoke-static {}, Lﹶﾞ/ᵢﹳ;->ˊﹳ()I

    move-result v1

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ˑʼ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v4}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v1, v5, :cond_3

    const-wide/16 v5, 0x10

    goto :goto_0

    :cond_3
    move-wide v5, v2

    :goto_0
    const-string v1, "android.permission.ACCESS_ADSERVICES_ATTRIBUTION"

    invoke-virtual {p0, v1}, Lﹶﾞ/ᵢﹳ;->ˎـ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-wide/16 v7, 0x2

    or-long/2addr v5, v7

    :cond_4
    cmp-long v1, v5, v2

    if-nez v1, :cond_8

    iget-object v1, p0, Lﹶﾞ/ᵢﹳ;->ٴᵢ:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lﹶﾞ/ᵢﹳ;->ˏⁱ()Lﾞי/ﹳٴ;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lﾞי/ﹳٴ;->ⁱˊ()Lˈˊ/ﹳᐧ;

    move-result-object v1

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x2710

    invoke-interface {v1, v9, v10, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_6

    move v7, v8

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_3

    :cond_6
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lﹶﾞ/ᵢﹳ;->ٴᵢ:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    :goto_2
    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    :goto_3
    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v7, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v8, "Measurement manager api exception"

    invoke-virtual {v7, v4, v8}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, p0, Lﹶﾞ/ᵢﹳ;->ٴᵢ:Ljava/lang/Boolean;

    :goto_4
    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v4, "Measurement manager api status result"

    invoke-virtual {v0, v1, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ٴᵢ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_5
    if-nez v7, :cond_8

    const-wide/16 v5, 0x40

    :cond_8
    cmp-long v0, v5, v2

    if-nez v0, :cond_9

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_9
    return-wide v5
.end method

.method public final ʽᐧ(Lcom/google/android/gms/internal/measurement/ᵔٴ;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/ᵔٴ;->ᵔﹳ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Error returning bundle list to wrapper"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ʿˎ()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ʽʽ:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lﹶﾞ/ᵢﹳ;->ʽʽ:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ʽʽ:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public final ˆʻ(I)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ʿʽ;->ᴵᵔ:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lﹶﾞ/ᵢﹳ;->ˉʽ()I

    move-result v1

    div-int/lit16 p1, p1, 0x3e8

    if-ge v1, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ˆˎ(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lﹶﾞ/ᵢﹳ;->ˈـ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v4, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v3, v2}, Lﹶﾞ/ˑٴ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Param value can\'t be null"

    invoke-virtual {v4, v2, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lﹶﾞ/ᵢﹳ;->ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final ˆﹳ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    const-string v0, "debug.firebase.analytics.app"

    invoke-virtual {p2, v0}, Lﹶﾞ/ᵎﹶ;->ʼᵢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ˈـ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    const-string v1, "_ev"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x1

    const/16 v4, 0x1f4

    if-eqz v1, :cond_0

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2, p1, v3, v3}, Lﹶﾞ/ᵢﹳ;->ˊـ(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, v4, p1, p2, v3}, Lﹶﾞ/ᵢﹳ;->ˊـ(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˉʽ()I
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ˉٴ:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    sget-object v1, Lᴵˈ/ﾞᴵ;->ⁱˊ:Lᴵˈ/ﾞᴵ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lᴵˈ/ᵎﹶ;->ˑﹳ:I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :catch_0
    const-string v0, "GooglePlayServicesUtil"

    const-string v2, "Google Play services is missing."

    nop

    :goto_0
    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lﹶﾞ/ᵢﹳ;->ˉٴ:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ˉٴ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final ˊـ(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 2

    .prologue
    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_e

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_5

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 p1, 0x1

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_d

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_d

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    if-eqz p4, :cond_c

    instance-of p1, p2, [Landroid/os/Bundle;

    if-nez p1, :cond_9

    instance-of p1, p2, [Landroid/os/Parcelable;

    if-eqz p1, :cond_c

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, [Landroid/os/Parcelable;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_b

    aget-object v0, p2, p4

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_a

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lﹶﾞ/ᵢﹳ;->ˆˎ(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :cond_d
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lﹶﾞ/ᵢﹳ;->יˉ(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    return-object p2
.end method

.method public final ˋ(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p1, p2, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    if-le v2, p1, :cond_1

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-virtual {v0, v2, p2, p1, p3}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final ˋˋ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_1

    return v0

    :cond_1
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p3, :cond_4

    iget-object p3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p3, Lﹶﾞ/ᵎʻ;

    iget-object p3, p3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p3, p3, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    invoke-virtual {p3, v0, p1, p2, p4}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public final ˋـ(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    .prologue
    const-string v0, "_ldl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢﹳ;->ᵢי(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property referrer"

    invoke-virtual {p0, v1, p2, v0, p1}, Lﹶﾞ/ᵢﹳ;->ˋˋ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢﹳ;->ᵢי(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property"

    invoke-virtual {p0, v1, p2, v0, p1}, Lﹶﾞ/ᵢﹳ;->ˋˋ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x7

    return p1
.end method

.method public final ˎʼ(Lcom/google/android/gms/internal/measurement/ᵔٴ;I)V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/ᵔٴ;->ᵔﹳ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ˎʾ(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v5, p3

    sget-object v2, Lﹶﾞ/ʻᴵ;->ˈ:[Ljava/lang/String;

    invoke-static {v1, v2}, Lﹶﾞ/ᵢﹳ;->ʿʽ(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v8, :cond_f

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lﹶﾞ/ᵎʻ;

    iget-object v2, v10, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v11, v10, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const v3, 0xc02a560

    invoke-virtual {v2, v3}, Lﹶﾞ/ᵢﹳ;->ˆʻ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    :goto_0
    move v12, v2

    goto :goto_1

    :cond_0
    const/16 v2, 0x19

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/util/TreeSet;

    invoke-virtual {v8}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    move v15, v14

    move/from16 v16, v15

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    move v3, v14

    goto :goto_5

    :cond_2
    :goto_3
    if-nez p4, :cond_3

    invoke-virtual {v0, v2}, Lﹶﾞ/ᵢﹳ;->ʼᵎ(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :cond_3
    move v3, v14

    :goto_4
    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Lﹶﾞ/ᵢﹳ;->ʻʻ(Ljava/lang/String;)I

    move-result v3

    :cond_4
    :goto_5
    if-eqz v3, :cond_7

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    move-object v6, v2

    goto :goto_6

    :cond_5
    move-object v6, v9

    :goto_6
    invoke-virtual {v0, v4, v3, v2, v6}, Lﹶﾞ/ᵢﹳ;->ᵢˋ(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_6
    :goto_7
    move-object/from16 v17, v9

    goto/16 :goto_c

    :cond_7
    invoke-virtual {v8, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Lﹶﾞ/ᵢﹳ;->ﾞˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v3

    const/16 v5, 0x11

    if-ne v3, v5, :cond_8

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5, v2, v3}, Lﹶﾞ/ᵢﹳ;->ᵢˋ(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_8
    if-eqz v3, :cond_a

    const-string v5, "_ev"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const/16 v5, 0x15

    if-ne v3, v5, :cond_9

    move-object v5, v1

    goto :goto_8

    :cond_9
    move-object v5, v2

    :goto_8
    invoke-virtual {v8, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v3, v5, v6}, Lﹶﾞ/ᵢﹳ;->ᵢˋ(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    :goto_9
    invoke-static {v2}, Lﹶﾞ/ᵢﹳ;->יי(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v15, v15, 0x1

    if-le v15, v12, :cond_d

    iget-object v3, v10, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ˊﾞ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v3, v9, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v16, :cond_b

    goto :goto_a

    :cond_b
    move-object/from16 v17, v9

    goto :goto_b

    :cond_c
    :goto_a
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Event can\'t contain more than "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " params"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v10, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v11, v1}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v9

    invoke-virtual {v11, v8}, Lﹶﾞ/ˑٴ;->ˑﹳ(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    const/4 v3, 0x5

    invoke-static {v3, v4}, Lﹶﾞ/ᵢﹳ;->ـˑ(ILandroid/os/Bundle;)Z

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/16 v16, 0x1

    :goto_c
    move-object/from16 v5, p3

    move-object/from16 v9, v17

    goto/16 :goto_2

    :cond_d
    move-object/from16 v5, p3

    goto/16 :goto_2

    :cond_e
    return-object v4

    :cond_f
    move-object/from16 v17, v9

    return-object v17
.end method

.method public final ˎˉ([Landroid/os/Parcelable;I)V
    .locals 13

    .prologue
    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    check-cast v3, Landroid/os/Bundle;

    new-instance v4, Ljava/util/TreeSet;

    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    move v6, v5

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lﹶﾞ/ᵢﹳ;->יי(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lﹶﾞ/ʻᴵ;->ᵔᵢ:[Ljava/lang/String;

    invoke-static {v7, v8}, Lﹶﾞ/ᵢﹳ;->ʿʽ(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-le v5, p2, :cond_0

    iget-object v8, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lﹶﾞ/ᵎʻ;

    iget-object v9, v8, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v10, v8, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    const/4 v11, 0x0

    sget-object v12, Lﹶﾞ/ᴵᵔ;->ˊﾞ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v9, v11, v12}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, v8, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v6, v6, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x3c

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Param can\'t contain more than "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " item-scoped custom parameters"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v7}, Lﹶﾞ/ˑٴ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v3}, Lﹶﾞ/ˑٴ;->ˑﹳ(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10, v8}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const/16 v6, 0x1c

    invoke-static {v6, v3}, Lﹶﾞ/ᵢﹳ;->ـˑ(ILandroid/os/Bundle;)Z

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final ˎـ(Ljava/lang/String;)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v1}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v1

    iget-object v1, v1, Lˑˊ/ⁱˊ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v1, "Permission not granted"

    invoke-virtual {v0, p1, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final ˏʻ(Lcom/google/android/gms/internal/measurement/ᵔٴ;Z)V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/ᵔٴ;->ᵔﹳ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Error returning boolean value to wrapper"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ˏⁱ()Lﾞי/ﹳٴ;
    .locals 9

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ˊʻ:Lﾞי/ﹳٴ;

    if-nez v0, :cond_9

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdServicesInfo.version="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Lˋ/ⁱˊ;->ﹳٴ:Lˋ/ⁱˊ;

    const/4 v4, 0x0

    const/16 v5, 0x21

    if-lt v2, v5, :cond_0

    invoke-virtual {v3}, Lˋ/ⁱˊ;->ﹳٴ()I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "MeasurementManager"

    nop

    if-lt v2, v5, :cond_1

    invoke-virtual {v3}, Lˋ/ⁱˊ;->ﹳٴ()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    const/4 v3, 0x5

    const/4 v5, 0x0

    if-lt v1, v3, :cond_2

    new-instance v1, Lʼᵎ/ⁱˊ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lʼᵎ/ⁱˊ;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    :cond_2
    sget-object v1, Lˋ/ﹳٴ;->ﹳٴ:Lˋ/ﹳٴ;

    const/16 v3, 0x20

    const/16 v7, 0x1f

    if-eq v2, v7, :cond_4

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lˋ/ﹳٴ;->ﹳٴ()I

    move-result v2

    :goto_3
    const/16 v8, 0x9

    if-lt v2, v8, :cond_7

    :try_start_0
    new-instance v2, Lʼᵎ/ⁱˊ;

    const/4 v8, 0x0

    invoke-direct {v2, v0, v8}, Lʼᵎ/ⁱˊ;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_4

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find adservices code, check manifest for uses-library tag, versionS="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v2, v7, :cond_5

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-virtual {v1}, Lˋ/ﹳٴ;->ﹳٴ()I

    move-result v4

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_7
    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_8

    new-instance v5, Lﾞי/ﹳٴ;

    invoke-direct {v5, v1}, Lﾞי/ﹳٴ;-><init>(Lcom/bumptech/glide/ˈ;)V

    :cond_8
    iput-object v5, p0, Lﹶﾞ/ᵢﹳ;->ˊʻ:Lﾞי/ﹳٴ;

    :cond_9
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ˊʻ:Lﾞי/ﹳٴ;

    return-object v0
.end method

.method public final ˑˆ(Lﹶﾞ/ˈⁱ;I)V
    .locals 10

    .prologue
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lﹶﾞ/ᵢﹳ;->יי(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_0

    iget-object v5, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    iget-object v6, v5, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v7, v5, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    const/4 v8, 0x0

    sget-object v9, Lﹶﾞ/ᴵᵔ;->ˊﾞ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v6, v8, v9}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Event can\'t contain more than "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " params"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    iget-object v6, p1, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1}, Lﹶﾞ/ˑٴ;->ˑﹳ(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lﹶﾞ/ᵢﹳ;->ـˑ(ILandroid/os/Bundle;)Z

    :cond_2
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final ˑˉ()J
    .locals 6

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lﹶﾞ/ᵢﹳ;->ᴵᵔ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lﹶﾞ/ᵢﹳ;->ᴵᵔ:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ᵢﹳ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public final ˑﹶ(Lcom/google/android/gms/internal/measurement/ᵔٴ;J)V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/ᵔٴ;->ᵔﹳ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final יʿ(Landroid/os/Bundle;J)V
    .locals 6

    .prologue
    const-string v0, "_et"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v4, "Params already contained engagement"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final יˑ(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 17

    .prologue
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "sfmc_id"

    const-string v4, "srsltid"

    const-string v5, "dclid"

    const-string v6, "gbraid"

    const-string v7, "gclid"

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "utm_campaign"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "utm_source"

    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "utm_medium"

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "utm_id"

    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_4

    :cond_0
    move-object v2, v1

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    move-object/from16 v16, v3

    const-string v3, "campaign"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v3

    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "source"

    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "medium"

    invoke-virtual {v1, v2, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v2, "gad_source"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v2, "utm_term"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "term"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v2, "utm_content"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "content"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v2, "aclid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v2, "cp1"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v2, "anid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "campaign_id"

    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1, v5, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v2, "utm_source_platform"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "source_platform"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v2, "utm_creative_format"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "creative_format"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v2, "utm_marketing_tactic"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "marketing_tactic"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1, v4, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "gad_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_16
    return-object v1

    :goto_4
    iget-object v3, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v4, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v3, v0, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_17
    move-object/from16 v2, p0

    return-object v1
.end method

.method public final יⁱ(Lcom/google/android/gms/internal/measurement/ᵔٴ;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/ᵔٴ;->ᵔﹳ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ᐧˏ()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Lﹶﾞ/ᵢﹳ;->ʿˎ()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "%032x"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ᐧⁱ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    const/16 v4, 0x5f

    if-nez v3, :cond_3

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    invoke-virtual {v0, p1, p2, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    if-eq v5, v4, :cond_5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v0, p1, p2, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_2
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public final ᴵٴ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/ᵔٴ;->ᵔﹳ(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_3
    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_4

    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_4
    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p3, Lﹶﾞ/ᵎʻ;

    iget-object v0, p3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    iget-object p3, p3, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {p3, p2}, Lﹶﾞ/ˑٴ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Not putting event parameter. Invalid value type. name, type"

    invoke-virtual {v0, p2, p1, p3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final ᵢˋ(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    invoke-static {p2, p1}, Lﹶﾞ/ᵢﹳ;->ـˑ(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x28

    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lﹶﾞ/ᵢﹳ;->יˉ(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_ev"

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_0

    instance-of p2, p4, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "_el"

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public final ᵢי(Ljava/lang/String;)I
    .locals 2

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    const-string v1, "_ldl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x800

    return p1

    :cond_0
    const-string v1, "_id"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x100

    return p1

    :cond_1
    const-string v1, "_lgclid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x64

    return p1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x24

    return p1
.end method

.method public final ᵢᐧ(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v2, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {p1, v2, p2}, Lˑˊ/ⁱˊ;->ﹳٴ(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v0, "Package name not found"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final ᵢᵎ(Ljava/lang/String;)I
    .locals 4

    .prologue
    const-string v0, "event"

    invoke-virtual {p0, v0, p1}, Lﹶﾞ/ᵢﹳ;->ᐧⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lﹶﾞ/ʻᴵ;->ﹳٴ:[Ljava/lang/String;

    sget-object v3, Lﹶﾞ/ʻᴵ;->ⁱˊ:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, p1}, Lﹶﾞ/ᵢﹳ;->ʻᐧ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0, p1}, Lﹶﾞ/ᵢﹳ;->ˋ(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵢﹳ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v0, p1, p2, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˉٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v0, p1, p2, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final ﹳᵢ(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lﹶﾞ/ᵢﹳ;->ᵔⁱ(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ﹶʽ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const-string v0, "_ldl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢﹳ;->ᵢי(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, v1}, Lﹶﾞ/ᵢﹳ;->ˊـ(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lﹶﾞ/ᵢﹳ;->ᵢי(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, p1, v1, v1}, Lﹶﾞ/ᵢﹳ;->ˊـ(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ﹶˎ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ﾞˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .locals 12

    .prologue
    move-object/from16 v3, p4

    iget-object v4, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Lﹶﾞ/ᵎʻ;

    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-static {p3}, Lﹶﾞ/ᵢﹳ;->ˈʻ(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "param"

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    if-eqz p7, :cond_6

    sget-object v4, Lﹶﾞ/ʻᴵ;->ᵎﹶ:[Ljava/lang/String;

    invoke-static {p2, v4}, Lﹶﾞ/ᵢﹳ;->ʿʽ(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v1, 0x14

    return v1

    :cond_0
    invoke-virtual {v6}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v4

    invoke-virtual {v4}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v4}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {v4}, Lﹶﾞ/ʿʽ;->ˈـ()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v4}, Lﹶﾞ/ᵢﹳ;->ˉʽ()I

    move-result v4

    const v8, 0x310c4

    if-ge v4, v8, :cond_2

    const/16 v1, 0x19

    return v1

    :cond_2
    :goto_0
    instance-of v4, p3, [Landroid/os/Parcelable;

    if-eqz v4, :cond_3

    move-object v8, p3

    check-cast v8, [Landroid/os/Parcelable;

    array-length v8, v8

    goto :goto_1

    :cond_3
    instance-of v8, p3, Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    move-object v8, p3

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_1
    const/16 v9, 0xc8

    if-le v8, v9, :cond_5

    iget-object v10, v6, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v10}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v10, v10, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "Parameter array is too long; discarded. Value kind, name, array length"

    invoke-virtual {v10, v11, v5, p2, v8}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x11

    if-eqz v4, :cond_4

    move-object v4, p3

    check-cast v4, [Landroid/os/Parcelable;

    array-length v10, v4

    if-le v10, v9, :cond_7

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_4
    instance-of v4, p3, Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    move-object v4, p3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v9, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, p2, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_5
    move v8, v7

    goto :goto_2

    :cond_6
    const/16 v1, 0x15

    return v1

    :cond_7
    :goto_2
    invoke-static {p1}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x1f4

    if-nez v3, :cond_9

    invoke-static {p2}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    iget-object v3, v6, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v3, v6, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x100

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_4
    invoke-virtual {p0, v5, p2, v4, p3}, Lﹶﾞ/ᵢﹳ;->ˋˋ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_8

    :cond_a
    if-eqz p7, :cond_11

    instance-of v3, p3, Landroid/os/Bundle;

    if-eqz v3, :cond_b

    move-object v3, p3

    check-cast v3, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lﹶﾞ/ᵢﹳ;->ʼﾞ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    return v8

    :cond_b
    instance-of v0, p3, [Landroid/os/Parcelable;

    if-eqz v0, :cond_d

    move-object v9, p3

    check-cast v9, [Landroid/os/Parcelable;

    array-length v10, v9

    :goto_5
    if-ge v7, v10, :cond_10

    aget-object v0, v9, v7

    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_c

    iget-object v1, v6, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "All Parcelable[] elements must be of type Bundle. Value type, name"

    invoke-virtual {v1, v0, p2, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lﹶﾞ/ᵢﹳ;->ʼﾞ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    instance-of v0, p3, Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    move-object v9, p3

    check-cast v9, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_6
    if-ge v7, v10, :cond_10

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_f

    iget-object v1, v6, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_7

    :cond_e
    const-string v0, "null"

    :goto_7
    const-string v3, "All ArrayList elements must be of type Bundle. Value type, name"

    invoke-virtual {v1, v0, p2, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lﹶﾞ/ᵢﹳ;->ʼﾞ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    return v8

    :cond_11
    :goto_9
    const/4 v0, 0x4

    return v0
.end method

.method public final ﾞי(Ljava/lang/String;)I
    .locals 4

    .prologue
    const-string v0, "user property"

    invoke-virtual {p0, v0, p1}, Lﹶﾞ/ᵢﹳ;->ᐧⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lﹶﾞ/ʻᴵ;->ʼˎ:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, p1}, Lﹶﾞ/ᵢﹳ;->ʻᐧ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xf

    return p1

    :cond_1
    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0, p1}, Lﹶﾞ/ᵢﹳ;->ˋ(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
