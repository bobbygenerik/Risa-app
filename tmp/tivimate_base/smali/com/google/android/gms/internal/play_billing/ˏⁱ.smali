.class public final enum Lcom/google/android/gms/internal/play_billing/ˏⁱ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

.field public static final enum ˈٴ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

.field public static final synthetic ˊʻ:[Lcom/google/android/gms/internal/play_billing/ˏⁱ;

.field public static final enum ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

.field public static final enum ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v1, 0x0

    const-string v2, "BROADCAST_ACTION_UNSPECIFIED"

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/internal/play_billing/ˏⁱ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v3, 0x1

    const-string v4, "PURCHASES_UPDATED_ACTION"

    invoke-direct {v2, v3, v3, v4}, Lcom/google/android/gms/internal/play_billing/ˏⁱ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    new-instance v4, Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v5, 0x2

    const-string v6, "LOCAL_PURCHASES_UPDATED_ACTION"

    invoke-direct {v4, v5, v5, v6}, Lcom/google/android/gms/internal/play_billing/ˏⁱ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ˈٴ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    new-instance v6, Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v7, 0x3

    const-string v8, "ALTERNATIVE_BILLING_ACTION"

    invoke-direct {v6, v7, v7, v8}, Lcom/google/android/gms/internal/play_billing/ˏⁱ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ˊʻ:[Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ʾˋ:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/ˏⁱ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ˊʻ:[Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/ˏⁱ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ʾˋ:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
