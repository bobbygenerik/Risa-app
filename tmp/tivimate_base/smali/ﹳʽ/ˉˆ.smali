.class public final Lﹳʽ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ᵔʾ;

.field public static final ⁱˊ:Lﹳʽ/ˉˆ;


# instance fields
.field public final ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lﹳʽ/ˉˆ;

    invoke-direct {v0}, Lﹳʽ/ˉˆ;-><init>()V

    sput-object v0, Lﹳʽ/ˉˆ;->ⁱˊ:Lﹳʽ/ˉˆ;

    new-instance v0, Lﹳʽ/ᵔʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹳʽ/ˉˆ;->ʽ:Lﹳʽ/ᵔʾ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lﹳʽ/ˉˆ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
