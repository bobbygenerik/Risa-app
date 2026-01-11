.class public final Lˈـ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lʼʻ/ٴʼ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/leanback/widget/ˉˆ;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ˉˆ;-><init>(I)V

    new-instance v1, Lˈـ/ˉˆ;

    invoke-direct {v1, v0}, Lˈـ/ˉˆ;-><init>(Landroidx/leanback/widget/ˉˆ;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/ˉˆ;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ˉˆ;

    iget-object p1, p1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼʻ/ʻٴ;

    if-nez p1, :cond_0

    sget-object p1, Lʼʻ/ᴵˊ;->ᴵᵔ:Lʼʻ/ᴵˊ;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lʼʻ/ʻٴ;->entrySet()Ljava/util/Set;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/AbstractCollection;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lʼʻ/ᴵˊ;->ᴵᵔ:Lʼʻ/ᴵˊ;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    check-cast p1, Lʼʻ/ˏי;

    iget-object v1, p1, Lʼʻ/ˏי;->ᴵˊ:Lʼʻ/ʻٴ;

    invoke-virtual {v1}, Lʼʻ/ʻٴ;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(I)V

    invoke-virtual {p1}, Lʼʻ/ˏי;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʼʻ/ˊʻ;

    invoke-virtual {v2}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, v2, Lʼʻ/ʿᵢ;->ˈٴ:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p1, Lʼʻ/ٴʼ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˑﹳ()Lʼʻ/ᴵʼ;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lʼʻ/ٴʼ;-><init>(Lʼʻ/ᴵʼ;I)V

    :goto_1
    iput-object p1, p0, Lˈـ/ˉˆ;->ﹳٴ:Lʼʻ/ٴʼ;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "Accept"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Allow"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Authorization"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Bandwidth"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "Blocksize"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "Cache-Control"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Connection"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "Content-Base"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "Content-Encoding"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "Content-Language"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-string v0, "Content-Length"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    const-string v0, "Content-Location"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const-string v0, "Content-Type"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const-string v0, "CSeq"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string v0, "Date"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    const-string v0, "Expires"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    const-string v0, "Location"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    :cond_10
    const-string v0, "Proxy-Authenticate"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    const-string v0, "Proxy-Require"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    const-string v0, "Public"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    :cond_13
    const-string v0, "Range"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v0

    :cond_14
    const-string v0, "RTP-Info"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    :cond_15
    const-string v0, "RTCP-Interval"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    const-string v0, "Scale"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v0

    :cond_17
    const-string v0, "Session"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    :cond_18
    const-string v0, "Speed"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    return-object v0

    :cond_19
    const-string v0, "Supported"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    :cond_1a
    const-string v0, "Timestamp"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    const-string v0, "Transport"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object v0

    :cond_1c
    const-string v0, "User-Agent"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object v0

    :cond_1d
    const-string v0, "Via"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-object v0

    :cond_1e
    const-string v0, "WWW-Authenticate"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object v0

    :cond_1f
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lˈـ/ˉˆ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lˈـ/ˉˆ;

    iget-object v0, p0, Lˈـ/ˉˆ;->ﹳٴ:Lʼʻ/ٴʼ;

    iget-object p1, p1, Lˈـ/ˉˆ;->ﹳٴ:Lʼʻ/ٴʼ;

    invoke-virtual {v0, p1}, Lʼʻ/ˉˆ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lˈـ/ˉˆ;->ﹳٴ:Lʼʻ/ٴʼ;

    invoke-virtual {v0}, Lʼʻ/ˉˆ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ⁱˊ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lˈـ/ˉˆ;->ﹳٴ:Lʼʻ/ٴʼ;

    invoke-static {p1}, Lˈـ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lʼʻ/ٴʼ;->ˈ(Ljava/lang/String;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
