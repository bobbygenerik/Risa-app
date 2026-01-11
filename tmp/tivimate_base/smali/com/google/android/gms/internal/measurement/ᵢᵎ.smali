.class public final enum Lcom/google/android/gms/internal/measurement/ᵢᵎ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ˎˊ;


# static fields
.field public static final enum ʽʽ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

.field public static final enum ˈٴ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

.field public static final enum ˊʻ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

.field public static final synthetic ٴᵢ:[Lcom/google/android/gms/internal/measurement/ᵢᵎ;

.field public static final enum ᴵˊ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

.field public static final enum ᴵᵔ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    const/4 v1, 0x0

    const-string v2, "PURPOSE_RESTRICTION_NOT_ALLOWED"

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/internal/measurement/ᵢᵎ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    const/4 v3, 0x1

    const-string v4, "PURPOSE_RESTRICTION_REQUIRE_CONSENT"

    invoke-direct {v2, v3, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵢᵎ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    new-instance v4, Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    const/4 v5, 0x2

    const-string v6, "PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST"

    invoke-direct {v4, v5, v5, v6}, Lcom/google/android/gms/internal/measurement/ᵢᵎ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    new-instance v6, Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    const/4 v7, 0x3

    const-string v8, "PURPOSE_RESTRICTION_UNDEFINED"

    invoke-direct {v6, v7, v7, v8}, Lcom/google/android/gms/internal/measurement/ᵢᵎ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    new-instance v8, Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    const/4 v9, -0x1

    const/4 v10, 0x4

    const-string v11, "UNRECOGNIZED"

    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/ᵢᵎ;-><init>(IILjava/lang/String;)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ٴᵢ:[Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ʾˋ:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/ᵢᵎ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ٴᵢ:[Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/ᵢᵎ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ʾˋ:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ()I
    .locals 2

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵢᵎ;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᵢᵎ;->ʾˋ:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
