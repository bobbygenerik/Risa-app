.class public final Lcom/google/android/gms/internal/measurement/ʾﾞ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/ʾﾞ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʾﾞ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾﾞ;->zzf:Lcom/google/android/gms/internal/measurement/ʾﾞ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ʾﾞ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method


# virtual methods
.method public final ʼᐧ()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʾﾞ;->zzd:I

    invoke-static {v0}, Lˈˋ/ʾˊ;->ᵎⁱ(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ʾﾞ;->zzf:Lcom/google/android/gms/internal/measurement/ʾﾞ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/י;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾﾞ;->zzf:Lcom/google/android/gms/internal/measurement/ʾﾞ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ʾﾞ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzb"

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const-string v1, "zzd"

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˊ;->ˑﹳ:Lcom/google/android/gms/internal/measurement/ʾˊ;

    aput-object v0, p1, v4

    const-string v1, "zze"

    aput-object v1, p1, v3

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾﾞ;->zzf:Lcom/google/android/gms/internal/measurement/ʾﾞ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔﹳ()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʾﾞ;->zze:I

    invoke-static {v0}, Lˈˋ/ʾˊ;->ᵎⁱ(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
