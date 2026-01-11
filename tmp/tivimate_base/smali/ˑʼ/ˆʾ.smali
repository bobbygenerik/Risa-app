.class public final Lˑʼ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˑʼ/ˆʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˑʼ/ˆʾ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˑʼ/ˆʾ;->ﹳٴ:Lˑʼ/ˆʾ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/animation/AnimatorSet;)J
    .locals 2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method
