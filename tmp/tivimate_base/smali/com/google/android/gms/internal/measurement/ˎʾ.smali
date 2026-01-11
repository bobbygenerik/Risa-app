.class public final Lcom/google/android/gms/internal/measurement/ˎʾ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/ˎʾ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/ʿʽ;

.field private zzf:Lcom/google/android/gms/internal/measurement/ʿʽ;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzh:Lcom/google/android/gms/internal/measurement/ˎʾ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public static ـˆ()Lcom/google/android/gms/internal/measurement/ˈـ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzh:Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˈـ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzg:Z

    return v0
.end method

.method public final synthetic ʼʼ(Lcom/google/android/gms/internal/measurement/ʿʽ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zze:Lcom/google/android/gms/internal/measurement/ʿʽ;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    return-void
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʽﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ʾˋ(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzg:Z

    return-void
.end method

.method public final synthetic ʾᵎ(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzd:I

    return-void
.end method

.method public final ˉˆ(I)Ljava/lang/Object;
    .locals 6

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzh:Lcom/google/android/gms/internal/measurement/ˎʾ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˈـ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzh:Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˎʾ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzb"

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const-string v1, "zzd"

    aput-object v1, p1, v0

    const-string v0, "zze"

    aput-object v0, p1, v4

    const-string v0, "zzf"

    aput-object v0, p1, v3

    const-string v0, "zzg"

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzh:Lcom/google/android/gms/internal/measurement/ˎʾ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי()Lcom/google/android/gms/internal/measurement/ʿʽ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzf:Lcom/google/android/gms/internal/measurement/ʿʽ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ʿʽ;->ʼʼ()Lcom/google/android/gms/internal/measurement/ʿʽ;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final יـ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔﹳ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzd:I

    return v0
.end method

.method public final synthetic ᵢˏ(Lcom/google/android/gms/internal/measurement/ʿʽ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzf:Lcom/google/android/gms/internal/measurement/ʿʽ;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zzb:I

    return-void
.end method

.method public final ﹳᐧ()Lcom/google/android/gms/internal/measurement/ʿʽ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎʾ;->zze:Lcom/google/android/gms/internal/measurement/ʿʽ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ʿʽ;->ʼʼ()Lcom/google/android/gms/internal/measurement/ʿʽ;

    move-result-object v0

    :cond_0
    return-object v0
.end method
