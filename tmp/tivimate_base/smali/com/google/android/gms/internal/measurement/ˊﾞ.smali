.class public final Lcom/google/android/gms/internal/measurement/ˊﾞ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/ˊﾞ;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:F

.field private zzh:D

.field private zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˊﾞ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzj:Lcom/google/android/gms/internal/measurement/ˊﾞ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method

.method public static ᴵˊ()Lcom/google/android/gms/internal/measurement/ˊˊ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzj:Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˊˊ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʼʼ()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzh:D

    return-wide v0
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ʽʽ(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final ʽﹳ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzf:J

    return-wide v0
.end method

.method public final ʾˋ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final ʾᵎ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ˈٴ(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zze:Ljava/lang/String;

    return-void
.end method

.method public final ˉˆ(I)Ljava/lang/Object;
    .locals 7

    .prologue
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzj:Lcom/google/android/gms/internal/measurement/ˊﾞ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˊˊ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzj:Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ˊﾞ;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzb"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzd"

    aput-object v5, p1, v0

    const-string v0, "zze"

    aput-object v0, p1, v4

    const-string v0, "zzf"

    aput-object v0, p1, v3

    const-string v0, "zzg"

    aput-object v0, p1, v2

    const-string v0, "zzh"

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-class v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzj:Lcom/google/android/gms/internal/measurement/ˊﾞ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic ˉٴ(D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzh:D

    return-void
.end method

.method public final synthetic ˊʻ(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzf:J

    return-void
.end method

.method public final ˏי()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final יـ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final ـˆ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzg:F

    return v0
.end method

.method public final ٴʼ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ʻˈ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic ٴᵢ()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzf:J

    return-void
.end method

.method public final synthetic ᴵᵔ()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzj:Lcom/google/android/gms/internal/measurement/ˊﾞ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zze:Ljava/lang/String;

    return-void
.end method

.method public final ᵎˊ(Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ʻˈ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ﾞי;->ʽ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic ᵎⁱ()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzh:D

    return-void
.end method

.method public final ᵔי()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method

.method public final ᵔﹳ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final ᵢˏ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzi:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-object v0
.end method

.method public final ﹳᐧ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﾞ;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
