.class public final Lcom/google/android/gms/internal/measurement/ٴﹳ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/ٴﹳ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

.field private zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ٴﹳ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ٴﹳ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzi:Lcom/google/android/gms/internal/measurement/ٴﹳ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ٴﹳ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method


# virtual methods
.method public final ʻٴ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final ʼʼ(ILcom/google/android/gms/internal/measurement/ـᵎ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ʻˈ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʽﹳ()Lcom/google/android/gms/internal/measurement/ʻˈ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-object v0
.end method

.method public final ʾᵎ(ILcom/google/android/gms/internal/measurement/ˎᐧ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ʻˈ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzi:Lcom/google/android/gms/internal/measurement/ٴﹳ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˑʼ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzi:Lcom/google/android/gms/internal/measurement/ٴﹳ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ٴﹳ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ٴﹳ;-><init>()V

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

    const-class v0, Lcom/google/android/gms/internal/measurement/ˎᐧ;

    aput-object v0, p1, v3

    const-string v0, "zzf"

    aput-object v0, p1, v2

    const-class v0, Lcom/google/android/gms/internal/measurement/ـᵎ;

    aput-object v0, p1, v1

    const-string v0, "zzg"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-string v0, "zzh"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzi:Lcom/google/android/gms/internal/measurement/ٴﹳ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי(I)Lcom/google/android/gms/internal/measurement/ˎᐧ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˎᐧ;

    return-object p1
.end method

.method public final יـ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final ـˆ(I)Lcom/google/android/gms/internal/measurement/ـᵎ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ـᵎ;

    return-object p1
.end method

.method public final ᵔﹳ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zzd:I

    return v0
.end method

.method public final ﹳᐧ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ٴﹳ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-object v0
.end method
