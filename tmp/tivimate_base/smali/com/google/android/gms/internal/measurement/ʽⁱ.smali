.class public final Lcom/google/android/gms/internal/measurement/ʽⁱ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/ʽⁱ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʽⁱ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʽⁱ;->zzg:Lcom/google/android/gms/internal/measurement/ʽⁱ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ʽⁱ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method


# virtual methods
.method public final ʼᐧ()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʽⁱ;->zzd:I

    invoke-static {v0}, Lˈˋ/ʾˊ;->ᵎⁱ(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ʽⁱ;->zzg:Lcom/google/android/gms/internal/measurement/ʽⁱ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/י;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʽⁱ;->zzg:Lcom/google/android/gms/internal/measurement/ʽⁱ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ʽⁱ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzb"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzd"

    aput-object v5, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˊ;->ˑﹳ:Lcom/google/android/gms/internal/measurement/ʾˊ;

    aput-object v0, p1, v4

    const-string v0, "zze"

    aput-object v0, p1, v3

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˊ;->ˈ:Lcom/google/android/gms/internal/measurement/ʾˊ;

    aput-object v0, p1, v2

    const-string v0, "zzf"

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˊ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ʾˊ;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʽⁱ;->zzg:Lcom/google/android/gms/internal/measurement/ʽⁱ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔﹳ()I
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʽⁱ;->zze:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final ﹳᐧ()I
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʽⁱ;->zzf:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    return v1

    :cond_3
    return v2
.end method
