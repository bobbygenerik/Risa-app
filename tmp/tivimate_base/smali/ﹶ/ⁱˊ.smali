.class public final Lﹶ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹶ/ⁱˊ;

.field public static final ˈ:Lʼʻ/ʿᵢ;

.field public static final ˑﹳ:Lʼʻ/ᴵʼ;


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lﹶ/ⁱˊ;

    sget-object v1, Lﹶ/ﹳٴ;->ˈ:Lﹶ/ﹳٴ;

    invoke-static {v1}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v1

    invoke-direct {v0, v1}, Lﹶ/ⁱˊ;-><init>(Lʼʻ/ʿᵢ;)V

    sput-object v0, Lﹶ/ⁱˊ;->ʽ:Lﹶ/ⁱˊ;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Lʼʻ/ﹳᐧ;->ⁱˊ(I[Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lʼʻ/ᵎⁱ;->ʼˎ(I[Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    sput-object v0, Lﹶ/ⁱˊ;->ˈ:Lʼʻ/ʿᵢ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˑﹳ()Lʼʻ/ᴵʼ;

    move-result-object v0

    sput-object v0, Lﹶ/ⁱˊ;->ˑﹳ:Lʼʻ/ᴵʼ;

    return-void
.end method

.method public constructor <init>(Lʼʻ/ʿᵢ;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶ/ﹳٴ;

    iget-object v3, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    iget v4, v2, Lﹶ/ﹳٴ;->ﹳٴ:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    iget-object v1, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶ/ﹳٴ;

    iget v1, v1, Lﹶ/ﹳٴ;->ⁱˊ:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, Lﹶ/ⁱˊ;->ⁱˊ:I

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lﹶ/ⁱˊ;->ⁱˊ(Landroid/content/Context;Landroid/content/Intent;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object p0

    return-object p0
.end method

.method public static ⁱˊ(Landroid/content/Context;Landroid/content/Intent;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;
    .locals 11

    .prologue
    invoke-static {p0}, Lʾﾞ/ˑﹳ;->ˈ(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0x21

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v1, :cond_1

    invoke-static {v0, p2}, Lˊˋ/ˑﹳ;->ⁱˊ(Landroid/media/AudioManager;Lʽⁱ/ˑﹳ;)Lⁱʽ/ﹳٴ;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "android.hardware.type.automotive"

    if-lt v2, v1, :cond_3

    invoke-static {p0}, Lᐧˎ/ʼʼ;->ˊˋ(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v0, p2}, Lˊˋ/ˑﹳ;->ﹳٴ(Landroid/media/AudioManager;Lʽⁱ/ˑﹳ;)Lﹶ/ⁱˊ;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p3

    goto :goto_1

    :cond_4
    new-array v0, v5, [Landroid/media/AudioDeviceInfo;

    iget-object p3, p3, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast p3, Landroid/media/AudioDeviceInfo;

    aput-object p3, v0, v6

    move-object p3, v0

    :goto_1
    new-instance v0, Lʼʻ/ˆﾞ;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Lʼʻ/ʽʽ;-><init>(I)V

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Integer;

    aput-object v8, v10, v6

    aput-object v9, v10, v5

    invoke-virtual {v0, v10}, Lʼʻ/ʽʽ;->ⁱˊ([Ljava/lang/Object;)V

    const/16 v8, 0x1f

    if-lt v2, v8, :cond_5

    const/16 v8, 0x1a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x1b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Integer;

    aput-object v8, v10, v6

    aput-object v9, v10, v5

    invoke-virtual {v0, v10}, Lʼʻ/ʽʽ;->ⁱˊ([Ljava/lang/Object;)V

    :cond_5
    if-lt v2, v1, :cond_6

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0}, Lʼʻ/ˆﾞ;->ᵎﹶ()Lʼʻ/ᵔٴ;

    move-result-object v0

    array-length v1, p3

    move v2, v6

    :goto_2
    if-ge v2, v1, :cond_8

    aget-object v8, p3, v2

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lʼʻ/ˈٴ;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object p0, Lﹶ/ⁱˊ;->ʽ:Lﹶ/ⁱˊ;

    return-object p0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    new-instance p3, Lʼʻ/ˆﾞ;

    invoke-direct {p3, v7}, Lʼʻ/ʽʽ;-><init>(I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/16 v2, 0xa

    if-lt v0, v1, :cond_a

    invoke-static {p0}, Lᐧˎ/ʼʼ;->ˊˋ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {p2}, Lʼˉ/ʽ;->ﾞᴵ(Lʽⁱ/ˑﹳ;)Lʼʻ/ʿᵢ;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p0}, Lʼʻ/ʽʽ;->ˈ(Ljava/lang/Iterable;)V

    new-instance p0, Lﹶ/ⁱˊ;

    invoke-virtual {p3}, Lʼʻ/ˆﾞ;->ᵎﹶ()Lʼʻ/ᵔٴ;

    move-result-object p1

    invoke-static {p1}, Lˈˊ/ˉˆ;->ˊʻ(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p1, v2}, Lﹶ/ⁱˊ;->ﹳٴ([II)Lʼʻ/ʿᵢ;

    move-result-object p1

    invoke-direct {p0, p1}, Lﹶ/ⁱˊ;-><init>(Lʼʻ/ʿᵢ;)V

    return-object p0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "use_external_surround_sound_flag"

    invoke-static {p0, p2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_b

    move p2, v5

    goto :goto_3

    :cond_b
    move p2, v6

    :goto_3
    if-nez p2, :cond_c

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const-string v0, "external_surround_sound_enabled"

    invoke-static {p0, v0, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_d

    sget-object p0, Lﹶ/ⁱˊ;->ˈ:Lʼʻ/ʿᵢ;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p0}, Lʼʻ/ʽʽ;->ˈ(Ljava/lang/Iterable;)V

    :cond_d
    if-eqz p1, :cond_f

    if-nez p2, :cond_f

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p1, p0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_f

    const-string p0, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-static {p0}, Lˈˊ/ˉˆ;->ⁱˊ([I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p0}, Lʼʻ/ʽʽ;->ˈ(Ljava/lang/Iterable;)V

    :cond_e
    new-instance p0, Lﹶ/ⁱˊ;

    invoke-virtual {p3}, Lʼʻ/ˆﾞ;->ᵎﹶ()Lʼʻ/ᵔٴ;

    move-result-object p2

    invoke-static {p2}, Lˈˊ/ˉˆ;->ˊʻ(Ljava/util/Collection;)[I

    move-result-object p2

    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Lﹶ/ⁱˊ;->ﹳٴ([II)Lʼʻ/ʿᵢ;

    move-result-object p1

    invoke-direct {p0, p1}, Lﹶ/ⁱˊ;-><init>(Lʼʻ/ʿᵢ;)V

    return-object p0

    :cond_f
    new-instance p0, Lﹶ/ⁱˊ;

    invoke-virtual {p3}, Lʼʻ/ˆﾞ;->ᵎﹶ()Lʼʻ/ᵔٴ;

    move-result-object p1

    invoke-static {p1}, Lˈˊ/ˉˆ;->ˊʻ(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p1, v2}, Lﹶ/ⁱˊ;->ﹳٴ([II)Lʼʻ/ʿᵢ;

    move-result-object p1

    invoke-direct {p0, p1}, Lﹶ/ⁱˊ;-><init>(Lʼʻ/ʿᵢ;)V

    return-object p0
.end method

.method public static ﹳٴ([II)Lʼʻ/ʿᵢ;
    .locals 4

    .prologue
    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [I

    :cond_0
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    new-instance v3, Lﹶ/ﹳٴ;

    invoke-direct {v3, v2, p1}, Lﹶ/ﹳٴ;-><init>(II)V

    invoke-virtual {v0, v3}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lﹶ/ⁱˊ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lﹶ/ⁱˊ;

    iget-object v0, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    iget-object v1, p1, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ˉʿ(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lﹶ/ⁱˊ;->ⁱˊ:I

    iget p1, p1, Lﹶ/ⁱˊ;->ⁱˊ:I

    if-ne v0, p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔʾ(Landroid/util/SparseArray;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lﹶ/ⁱˊ;->ⁱˊ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lﹶ/ⁱˊ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ(Lʽⁱ/ˑﹳ;Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;
    .locals 13

    .prologue
    iget-object v0, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-static {v0, v1}, Lʽⁱ/ˉٴ;->ˈ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lﹶ/ⁱˊ;->ˑﹳ:Lʼʻ/ᴵʼ;

    invoke-virtual {v2, v1}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x7

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0x12

    iget-object v6, p0, Lﹶ/ⁱˊ;->ﹳٴ:Landroid/util/SparseArray;

    if-ne v0, v5, :cond_1

    invoke-static {v6, v5}, Lᐧˎ/ʼʼ;->ٴﹶ(Landroid/util/SparseArray;I)Z

    move-result v7

    if-nez v7, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    invoke-static {v6, v4}, Lᐧˎ/ʼʼ;->ٴﹶ(Landroid/util/SparseArray;I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/16 v7, 0x1e

    if-ne v0, v7, :cond_4

    invoke-static {v6, v7}, Lᐧˎ/ʼʼ;->ٴﹶ(Landroid/util/SparseArray;I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    invoke-static {v6, v0}, Lᐧˎ/ʼʼ;->ٴﹶ(Landroid/util/SparseArray;I)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lﹶ/ﹳٴ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v6, Lﹶ/ﹳٴ;->ⁱˊ:I

    iget-object v8, v6, Lﹶ/ﹳٴ;->ʽ:Lʼʻ/ᵔٴ;

    iget v9, p2, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eq v9, v12, :cond_b

    if-ne v0, v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string p2, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-ge p1, p2, :cond_7

    const/16 p1, 0xa

    if-le v9, p1, :cond_10

    goto/16 :goto_6

    :cond_7
    if-nez v8, :cond_8

    if-gt v9, v7, :cond_a

    move v11, v10

    goto :goto_1

    :cond_8
    invoke-static {v9}, Lᐧˎ/ʼʼ;->יـ(I)I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v8, p1}, Lʼʻ/ˈٴ;->contains(Ljava/lang/Object;)Z

    move-result v11

    :cond_a
    :goto_1
    if-nez v11, :cond_10

    goto :goto_6

    :cond_b
    :goto_2
    iget p2, p2, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-eq p2, v12, :cond_c

    goto :goto_3

    :cond_c
    const p2, 0xbb80

    :goto_3
    iget v5, v6, Lﹶ/ﹳٴ;->ﹳٴ:I

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_e

    invoke-static {v5, p2, p1}, Lʼˉ/ʽ;->ᵎﹶ(IILʽⁱ/ˑﹳ;)I

    move-result v7

    goto :goto_4

    :cond_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    move-object p2, p1

    :cond_f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_4
    move v9, v7

    :cond_10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-gt p1, p2, :cond_12

    if-ne v9, v1, :cond_11

    move v3, v4

    goto :goto_5

    :cond_11
    const/4 p2, 0x3

    if-eq v9, p2, :cond_13

    const/4 p2, 0x4

    if-eq v9, p2, :cond_13

    const/4 p2, 0x5

    if-ne v9, p2, :cond_12

    goto :goto_5

    :cond_12
    move v3, v9

    :cond_13
    :goto_5
    const/16 p2, 0x1a

    if-gt p1, p2, :cond_14

    const-string p1, "fugu"

    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    if-ne v3, v10, :cond_14

    const/4 v3, 0x2

    :cond_14
    invoke-static {v3}, Lᐧˎ/ʼʼ;->יـ(I)I

    move-result p1

    if-nez p1, :cond_15

    :goto_6
    const/4 p1, 0x0

    return-object p1

    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
