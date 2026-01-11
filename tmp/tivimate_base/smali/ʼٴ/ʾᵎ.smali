.class public final synthetic Lʼٴ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵢ/ٴﹶ;
.implements Lʼᵢ/ʽﹳ;
.implements Lﹳᵢ/ˉـ;
.implements Lˊˋ/ﹳᐧ;
.implements Lﹶⁱ/ﹳٴ;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ᴵˊ:I


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    .prologue
    iput p2, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    sparse-switch p2, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    const/16 p1, 0x64

    iput p1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    return-void

    :sswitch_1
    const/16 p1, 0x20

    invoke-direct {p0, p1}, Lʼٴ/ʾᵎ;-><init>(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(CI)V
    .locals 0

    iput p2, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    iput-object p3, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    iput p1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iput v0, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lᴵˈ/ⁱˊ;I)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    iput p2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x3

    iput v0, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget v0, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [C

    const/4 v2, 0x0

    iget v3, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public ʼˎ(Lﹳʽ/ᴵᵔ;)Lʼᵢ/ﾞʻ;
    .locals 5

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_1

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.amazon.hardware.tv_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Lˋⁱ/ﾞᴵ;->ʼˎ(Lﹳʽ/ᴵᵔ;)Lʼᵢ/ﾞʻ;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ٴʼ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ʽﹳ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lﹶﾞ/ⁱי;

    new-instance v2, Lʼᵢ/ⁱˊ;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lʼᵢ/ⁱˊ;-><init>(II)V

    new-instance v3, Lʼᵢ/ⁱˊ;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lʼᵢ/ⁱˊ;-><init>(II)V

    const/16 v0, 0x8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lﹶﾞ/ⁱי;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, p1}, Lﹶﾞ/ⁱי;->ˆʾ(Lﹳʽ/ᴵᵔ;)Lʼᵢ/ʽ;

    move-result-object p1

    return-object p1
.end method

.method public ʼᐧ()V
    .locals 5

    .prologue
    sget-object v0, Lᴵˉ/ⁱˊ;->ʽ:Lᴵˉ/ⁱˊ;

    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [C

    monitor-enter v0

    :try_start_0
    iget v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    array-length v3, v1

    add-int/2addr v3, v2

    sget v4, Lᴵˉ/ﹳٴ;->ﹳٴ:I

    if-ge v3, v4, :cond_0

    array-length v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lﹶˈ/ᵔᵢ;

    invoke-virtual {v2, v1}, Lﹶˈ/ᵔᵢ;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public ʽ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˈـ/יـ;

    iget-object v0, v0, Lˈـ/יـ;->ᵔי:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public ʾˋ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ˆʾ(II)V
    .locals 2

    .prologue
    add-int/2addr p2, p1

    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [C

    array-length v1, v0

    if-gt v1, p2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    if-ge p2, p1, :cond_0

    move p2, p1

    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public ˈ(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ʽʽ(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public ˉʿ(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ˉˆ(Lˊﾞ/ﾞʻ;)J
    .locals 7

    .prologue
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v4, 0x80

    move v5, v2

    :goto_0
    and-int v6, v1, v4

    if-nez v6, :cond_1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v4, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v4, v3, v5, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    :goto_1
    if-ge v2, v5, :cond_2

    shl-int/lit8 p1, v1, 0x8

    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    add-int/2addr v5, v3

    add-int/2addr v5, p1

    iput v5, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    int-to-long v0, v1

    return-wide v0
.end method

.method public ˏי(Lcom/google/android/gms/internal/play_billing/ʽᐧ;)Ljava/lang/String;
    .locals 7

    .prologue
    iget v0, p0, Lʼٴ/ʾᵎ;->ʾˋ:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    new-instance v3, Lﹳʽ/ˊʻ;

    invoke-direct {v3, v0, v1, p1}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v3, v2}, Lʼٴ/ⁱˊ;->ˑʼ(Lʼٴ/ʽ;I)V

    const-string p1, "reconnectIfNeeded"

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʾˋ;

    iget v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    :try_start_0
    iget-object v3, v0, Lʼٴ/ʾˋ;->ˆﾞ:Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v3, v0, Lʼٴ/ʾˋ;->ˆﾞ:Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

    iget-object v5, v0, Lʼٴ/ʾˋ;->ᵎˊ:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x6

    if-eq v2, v1, :cond_0

    const-string v1, "QUERY_PRODUCT_DETAILS_ASYNC"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v1, "START_CONNECTION"

    goto :goto_0

    :cond_1
    const-string v1, "IS_FEATURE_SUPPORTED"

    goto :goto_0

    :cond_2
    const-string v1, "CONSUME_ASYNC"

    goto :goto_0

    :cond_3
    const-string v1, "ACKNOWLEDGE_PURCHASE"

    goto :goto_0

    :cond_4
    const-string v1, "LAUNCH_BILLING_FLOW"

    :goto_0
    new-instance v2, Lʼٴ/ʼʼ;

    invoke-direct {v2, p1}, Lʼٴ/ʼʼ;-><init>(Lcom/google/android/gms/internal/play_billing/ʽᐧ;)V

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ﾞᴵ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔٴ()Landroid/os/Parcel;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v1, Lcom/google/android/gms/internal/play_billing/ˑﹳ;->ﹳٴ:I

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v6, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_5
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/16 v2, 0x1c

    sget-object v3, Lʼٴ/ˈٴ;->ﹳᐧ:Lʼٴ/ﾞᴵ;

    const/16 v4, 0x5f

    invoke-virtual {v0, v4, v2, v3}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V

    const-string v0, "BillingClientTesting"

    const-string v2, "An error occurred while retrieving billing override."

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ﹳٴ(Ljava/lang/Object;)V

    :goto_2
    const-string p1, "billingOverrideService.getBillingOverride"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ(Lʿʾ/ᵢˏ;Lʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 3

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Lʿʾ/ᵢˏ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, Lʿʾ/ᵢˏ;->ˈ()V

    new-instance p1, Lʾˑ/ⁱˊ;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lʾˑ/ⁱˊ;-><init>([B)V

    return-object p1
.end method

.method public יـ(Ljava/lang/String;)V
    .locals 5

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-virtual {p0, v1, v0}, Lʼٴ/ʾᵎ;->ˆʾ(II)V

    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [C

    iget v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    add-int/2addr p1, v0

    iput p1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    return-void
.end method

.method public ـˆ(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ٴﹶ(I)J
    .locals 3

    .prologue
    if-ltz p1, :cond_0

    iget v0, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", size is "

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᵎﹶ(I)Landroid/media/MediaCodecInfo;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public ᵔʾ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I
    .locals 3

    .prologue
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˈـ/יـ;

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    iget-boolean v2, v0, Lˈـ/יـ;->ˋᵔ:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, v0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈـ/ﹳᐧ;

    iget-object v1, v0, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    iget-boolean v0, v0, Lˈـ/ﹳᐧ;->ˈ:Z

    invoke-virtual {v1, p1, p2, p3, v0}, Lﹳᵢ/ᴵˑ;->ʽʽ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;IZ)I

    move-result p1

    return p1
.end method

.method public ᵔﹳ(J)I
    .locals 3

    .prologue
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˈـ/יـ;

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    iget-boolean v2, v0, Lˈـ/יـ;->ˋᵔ:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, v0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈـ/ﹳᐧ;

    iget-object v1, v0, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    iget-boolean v0, v0, Lˈـ/ﹳᐧ;->ˈ:Z

    invoke-virtual {v1, v0, p1, p2}, Lﹳᵢ/ᴵˑ;->ʻٴ(ZJ)I

    move-result p1

    invoke-virtual {v1, p1}, Lﹳᵢ/ᴵˑ;->ᵎⁱ(I)V

    return p1
.end method

.method public ⁱˊ(J)V
    .locals 3

    .prologue
    iget v0, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public ﹳٴ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˈـ/יـ;

    iget v1, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    iget-boolean v2, v0, Lˈـ/יـ;->ˋᵔ:Z

    if-nez v2, :cond_0

    iget-object v0, v0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈـ/ﹳᐧ;

    iget-object v1, v0, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    iget-boolean v0, v0, Lˈـ/ﹳᐧ;->ˈ:Z

    invoke-virtual {v1, v0}, Lﹳᵢ/ᴵˑ;->ʾᵎ(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ﹳᐧ(Lˊᐧ/ˈ;)V
    .locals 9

    .prologue
    iget v0, p1, Lˊᐧ/ˈ;->ﾞᴵ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    iget-object v3, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [Lˊᐧ/ˈ;

    aget-object v4, v3, v2

    iput v1, p1, Lˊᐧ/ˈ;->ﾞᴵ:I

    const/4 v1, 0x0

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    if-ne p1, v4, :cond_0

    return-void

    :cond_0
    iget-wide v1, p1, Lˊᐧ/ˈٴ;->ʽ:J

    iget-wide v5, v4, Lˊᐧ/ˈٴ;->ʽ:J

    sub-long/2addr v5, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v5, v6}, Lˊʼ/ˆʾ;->ˑﹳ(JJ)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, [Lˊᐧ/ˈ;

    aput-object v4, p1, v0

    iput v0, v4, Lˊᐧ/ˈ;->ﾞᴵ:I

    return-void

    :cond_1
    if-gez p1, :cond_5

    :goto_0
    shl-int/lit8 p1, v0, 0x1

    add-int/lit8 v3, p1, 0x1

    iget v5, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    if-gt v3, v5, :cond_3

    iget-object v5, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, [Lˊᐧ/ˈ;

    aget-object p1, v5, p1

    aget-object v3, v5, v3

    iget-wide v5, p1, Lˊᐧ/ˈٴ;->ʽ:J

    iget-wide v7, v3, Lˊᐧ/ˈٴ;->ʽ:J

    sub-long/2addr v7, v5

    invoke-static {v1, v2, v7, v8}, Lˊʼ/ˆʾ;->ˑﹳ(JJ)I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v3

    goto :goto_1

    :cond_3
    if-gt p1, v5, :cond_4

    iget-object v3, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [Lˊᐧ/ˈ;

    aget-object p1, v3, p1

    :goto_1
    iget-wide v5, v4, Lˊᐧ/ˈٴ;->ʽ:J

    iget-wide v7, p1, Lˊᐧ/ˈٴ;->ʽ:J

    sub-long/2addr v7, v5

    invoke-static {v1, v2, v7, v8}, Lˊʼ/ˆʾ;->ˑﹳ(JJ)I

    move-result v3

    if-lez v3, :cond_4

    iget v3, p1, Lˊᐧ/ˈ;->ﾞᴵ:I

    iput v0, p1, Lˊᐧ/ˈ;->ﾞᴵ:I

    iget-object v5, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, [Lˊᐧ/ˈ;

    aput-object p1, v5, v0

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, [Lˊᐧ/ˈ;

    aput-object v4, p1, v0

    iput v0, v4, Lˊᐧ/ˈ;->ﾞᴵ:I

    return-void

    :cond_5
    invoke-virtual {p0, v0, v4}, Lʼٴ/ʾᵎ;->ﾞʻ(ILˊᐧ/ˈ;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ﾞʻ(ILˊᐧ/ˈ;)V
    .locals 8

    .prologue
    :goto_0
    shr-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [Lˊᐧ/ˈ;

    aget-object v1, v1, v0

    iget-wide v2, v1, Lˊᐧ/ˈٴ;->ʽ:J

    iget-wide v4, p2, Lˊᐧ/ˈٴ;->ʽ:J

    const-wide/16 v6, 0x0

    sub-long/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Lˊʼ/ˆʾ;->ˑﹳ(JJ)I

    move-result v2

    if-lez v2, :cond_0

    iput p1, v1, Lˊᐧ/ˈ;->ﾞᴵ:I

    iget-object v2, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, [Lˊᐧ/ˈ;

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Lˊᐧ/ˈ;

    aput-object p2, v0, p1

    iput p1, p2, Lˊᐧ/ˈ;->ﾞᴵ:I

    return-void
.end method

.method public ﾞᴵ([J)V
    .locals 5

    .prologue
    iget v0, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lʼٴ/ʾᵎ;->ᴵˊ:I

    return-void
.end method
