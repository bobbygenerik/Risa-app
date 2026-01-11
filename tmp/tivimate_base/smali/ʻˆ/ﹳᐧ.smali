.class public final Lʻˆ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public static final ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;


# instance fields
.field public ʽ:I

.field public ⁱˊ:I

.field public final ﹳٴ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˆʽ/ʽ;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lˆʽ/ʽ;-><init>(C)V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v2, Lﹳי/ʽ;

    invoke-direct {v2, v0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lﹳי/ʽ;)V

    sput-object v1, Lʻˆ/ﹳᐧ;->ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v0, Lˆʽ/ʽ;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lˆʽ/ʽ;-><init>(C)V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v2, Lﹳי/ʽ;

    invoke-direct {v2, v0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lﹳי/ʽ;)V

    sput-object v1, Lʻˆ/ﹳᐧ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʻˆ/ﹳᐧ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lʻˆ/ﹳᐧ;->ⁱˊ:I

    return-void
.end method
