.class public final Lˋ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lˋ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˋ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˋ/ﹳٴ;->ﹳٴ:Lˋ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 1

    const/16 v0, 0x1f

    invoke-static {v0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    return v0
.end method
