.class public final Lcom/google/android/gms/internal/measurement/ʿʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ٴﹶ;


# static fields
.field public static final ᴵˊ:Lcom/google/android/gms/internal/measurement/ʿʾ;


# instance fields
.field public final ʾˋ:Lˆʽ/ᵔʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʿʾ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ʿʾ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʿʾ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʿʾ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʾⁱ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lˆʽ/ᵔʾ;

    invoke-direct {v1, v0}, Lˆʽ/ᵔʾ;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ʿʾ;->ʾˋ:Lˆʽ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʿʾ;->ﹳٴ()Lcom/google/android/gms/internal/measurement/יᐧ;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Lcom/google/android/gms/internal/measurement/יᐧ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʿʾ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/יᐧ;

    return-object v0
.end method
