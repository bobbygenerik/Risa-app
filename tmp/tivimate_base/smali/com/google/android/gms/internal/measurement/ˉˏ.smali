.class public final Lcom/google/android/gms/internal/measurement/ˉˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ٴﹶ;


# static fields
.field public static final ᴵˊ:Lcom/google/android/gms/internal/measurement/ˉˏ;


# instance fields
.field public final ʾˋ:Lˆʽ/ᵔʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˉˏ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˉˏ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˉˏ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ˉˏ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lˆʽ/ᵔʾ;

    invoke-direct {v1, v0}, Lˆʽ/ᵔʾ;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ˉˏ;->ʾˋ:Lˆʽ/ᵔʾ;

    return-void
.end method

.method public static ﹳٴ()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˉˏ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ˉˏ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ⁱˊ()Lcom/google/android/gms/internal/measurement/ⁱʼ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ⁱˊ()Lcom/google/android/gms/internal/measurement/ⁱʼ;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ()Lcom/google/android/gms/internal/measurement/ⁱʼ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉˏ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ⁱʼ;

    return-object v0
.end method
