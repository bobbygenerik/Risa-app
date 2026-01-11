.class public final Lᴵי/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic notCompletedCount$volatile:I

.field public final ﹳٴ:[Lᴵי/ʾˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lᴵי/ˑﹳ;

    const-string v1, "notCompletedCount$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ˑﹳ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Lᴵי/ʾˋ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵי/ˑﹳ;->ﹳٴ:[Lᴵי/ʾˋ;

    array-length p1, p1

    iput p1, p0, Lᴵי/ˑﹳ;->notCompletedCount$volatile:I

    return-void
.end method
