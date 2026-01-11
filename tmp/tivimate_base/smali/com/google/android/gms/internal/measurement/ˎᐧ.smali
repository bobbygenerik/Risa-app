.class public final Lcom/google/android/gms/internal/measurement/ˎᐧ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/ˎᐧ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/ᐧﹶ;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˎᐧ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˎᐧ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzj:Lcom/google/android/gms/internal/measurement/ˎᐧ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ˎᐧ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zze:Ljava/lang/String;

    return-void
.end method

.method public static ʾᵎ()Lcom/google/android/gms/internal/measurement/ʼـ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzj:Lcom/google/android/gms/internal/measurement/ˎᐧ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʼـ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzb:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ʼʼ(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zze:Ljava/lang/String;

    return-void
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzb:I

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzh:Z

    return v0
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzj:Lcom/google/android/gms/internal/measurement/ˎᐧ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ʼـ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzj:Lcom/google/android/gms/internal/measurement/ˎᐧ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˎᐧ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ˎᐧ;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzj:Lcom/google/android/gms/internal/measurement/ˎᐧ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzg:Z

    return v0
.end method

.method public final יـ()Lcom/google/android/gms/internal/measurement/ᐧﹶ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzf:Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->ʾᵎ()Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ـˆ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzi:Z

    return v0
.end method

.method public final ᵔﹳ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zzd:I

    return v0
.end method

.method public final ﹳᐧ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎᐧ;->zze:Ljava/lang/String;

    return-object v0
.end method
