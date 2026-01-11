.class public final Lˑʼ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˑʼ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˑʼ/ٴﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˑʼ/ٴﹶ;->ﹳٴ:Lˑʼ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroid/animation/AnimatorSet;J)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method

.method public final ﹳٴ(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    return-void
.end method
