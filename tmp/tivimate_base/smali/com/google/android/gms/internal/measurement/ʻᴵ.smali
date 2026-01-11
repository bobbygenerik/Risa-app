.class public final Lcom/google/android/gms/internal/measurement/ʻᴵ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/ʻᴵ;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʻᴵ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ʻᴵ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʻᴵ;->zzg:Lcom/google/android/gms/internal/measurement/ʻᴵ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ʻᴵ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ʻᴵ;->zzd:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ʻᴵ;->zze:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method


# virtual methods
.method public final ʼᐧ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʻᴵ;->zzd:Ljava/lang/String;

    return-object v0
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ʻᴵ;->zzg:Lcom/google/android/gms/internal/measurement/ʻᴵ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/י;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʻᴵ;->zzg:Lcom/google/android/gms/internal/measurement/ʻᴵ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ʻᴵ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ʻᴵ;-><init>()V

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

    const-class v0, Lcom/google/android/gms/internal/measurement/ﹶ;

    aput-object v0, p1, v3

    const-string v0, "zzf"

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʻᴵ;->zzg:Lcom/google/android/gms/internal/measurement/ʻᴵ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1007\u0001"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
