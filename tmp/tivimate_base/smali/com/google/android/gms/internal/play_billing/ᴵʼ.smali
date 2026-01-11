.class public final Lcom/google/android/gms/internal/play_billing/ᴵʼ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ᴵʼ;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/ʾﾞ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ᴵʼ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹶˎ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ﹶˎ;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzd:Lcom/google/android/gms/internal/play_billing/ʾﾞ;

    return-void
.end method

.method public static ˉˆ(Lcom/google/android/gms/internal/play_billing/ᴵʼ;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzd:Lcom/google/android/gms/internal/play_billing/ʾﾞ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˈˏ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/play_billing/ˈˏ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾﾞ;->ʽ(I)Lcom/google/android/gms/internal/play_billing/ʾﾞ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzd:Lcom/google/android/gms/internal/play_billing/ʾﾞ;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzd:Lcom/google/android/gms/internal/play_billing/ʾﾞ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ⁱˉ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    instance-of v1, p0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_1

    :cond_1
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/ﹶˎ;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ﹶˎ;

    iget v2, v1, Lcom/google/android/gms/internal/play_billing/ﹶˎ;->ʽʽ:I

    add-int/2addr v2, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/play_billing/ﹶˎ;->ᴵˊ:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    if-eqz v0, :cond_4

    :goto_0
    if-ge v0, v2, :cond_3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6, v3}, Landroid/support/v4/media/session/ﹳٴ;->ʼˎ(IIIII)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/ﹶˎ;->ᴵˊ:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/ﹶˎ;->ᴵˊ:[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/ﹶˎ;->ᴵˊ:[Ljava/lang/Object;

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    const-string v1, "Element at index "

    const-string v2, " is null."

    invoke-static {p1, v1, v2}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_6

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public static ᵔʾ()Lcom/google/android/gms/internal/play_billing/ˏᵢ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ﾞᴵ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˏᵢ;

    return-object v0
.end method


# virtual methods
.method public final ˈ(I)Ljava/lang/Object;
    .locals 3

    .prologue
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ˏᵢ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ᴵʼ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzd"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-class v1, Lcom/google/android/gms/internal/play_billing/ᐧᴵ;

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
