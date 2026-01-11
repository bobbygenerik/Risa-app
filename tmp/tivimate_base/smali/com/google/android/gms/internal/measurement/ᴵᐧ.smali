.class public final Lcom/google/android/gms/internal/measurement/ᴵᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ٴﹶ;


# static fields
.field public static final ᴵˊ:Lcom/google/android/gms/internal/measurement/ᴵᐧ;


# instance fields
.field public final ʾˋ:Lˆʽ/ᵔʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᴵᐧ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ᴵᐧ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᴵᐧ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ᴵᐧ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᴵʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lˆʽ/ᵔʾ;

    invoke-direct {v1, v0}, Lˆʽ/ᵔʾ;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ᴵᐧ;->ʾˋ:Lˆʽ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᴵᐧ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉˊ;

    return-object v0
.end method
